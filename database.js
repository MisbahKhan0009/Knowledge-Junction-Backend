import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();

const pool = mysql
  .createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DB,
  })
  .promise();

export async function getBooks() {
  const query = `
        SELECT 
          Books.ISBN, 
          Books.Title, 
          Books.PublicationDate, 
          Authors.FullName as Author, 
          Publishers.Name as Publisher, 
          Languages.Name as Language, 
          Categories.Name as Category,
          Book_Reviews.ReviewText as Review,
          Book_Reviews.Rating as Rating
        FROM 
          Books
        JOIN 
          Authors ON Books.AuthorID = Authors.AuthorID
        JOIN 
          Publishers ON Books.PublisherID = Publishers.PublisherID
        JOIN 
          Languages ON Books.LanguageID = Languages.LanguageID
        JOIN 
          Categories ON Books.CategoryID = Categories.CategoryID
        LEFT JOIN 
          Book_Reviews ON Books.ISBN = Book_Reviews.BookISBN
      `;

  const [rows] = await pool.query(query);
  return rows;
}

export async function getBook(ISBN) {
  const query = `
      SELECT 
        Books.ISBN, 
        Books.Title, 
        Books.PublicationDate, 
        Authors.FullName as Author, 
        Publishers.Name as Publisher,
        Publishers.Location as PublisherLocation, 
        Publishers.ContactInformation as PublisherContactInformation, 
        Authors.Nationality as AuthorNationality,  
        Authors.Biography as AuthorBiography,  
        Languages.Name as Language, 
        Categories.Name as Category,
        Categories.Description as CategoryDescription,
        Book_Reviews.ReviewText as Review,
        Book_Reviews.Rating as Rating
      FROM 
        Books
      JOIN 
        Authors ON Books.AuthorID = Authors.AuthorID
      JOIN 
        Publishers ON Books.PublisherID = Publishers.PublisherID
      JOIN 
        Languages ON Books.LanguageID = Languages.LanguageID
      JOIN 
        Categories ON Books.CategoryID = Categories.CategoryID
      LEFT JOIN 
        Book_Reviews ON Books.ISBN = Book_Reviews.BookISBN
      WHERE
        Books.ISBN = ?
    `;
  const [rows] = await pool.query(query, [ISBN]);
  return rows[0];
}

// database.js

export async function deleteBook(ISBN) {
  const connection = await pool.getConnection();
  try {
    await connection.beginTransaction();

    // Delete book copies first due to foreign key constraints
    await connection.query("DELETE FROM Book_Copies WHERE BookISBN = ?", [
      ISBN,
    ]);

    // Delete the book entry
    await connection.query("DELETE FROM Books WHERE ISBN = ?", [ISBN]);

    await connection.commit();
  } catch (error) {
    await connection.rollback();
    throw new Error(`Failed to delete book: ${error}`);
  } finally {
    connection.release();
  }
}

async function findOrCreateAuthor(connection, fullName) {
  const [results] = await connection.query(
    "SELECT AuthorID FROM Authors WHERE FullName = ?",
    [fullName]
  );
  if (results.length > 0) {
    return results[0].AuthorID;
  } else {
    const [result] = await connection.query(
      "INSERT INTO Authors (FullName) VALUES (?)",
      [fullName]
    );
    return result.insertId;
  }
}

async function findOrCreatePublisher(connection, name) {
  const [results] = await connection.query(
    "SELECT PublisherID FROM Publishers WHERE Name = ?",
    [name]
  );
  if (results.length > 0) {
    return results[0].PublisherID;
  } else {
    const [result] = await connection.query(
      "INSERT INTO Publishers (Name) VALUES (?)",
      [name]
    );
    return result.insertId;
  }
}

async function findOrCreateCategory(connection, name) {
  const [results] = await connection.query(
    "SELECT CategoryID FROM Categories WHERE Name = ?",
    [name]
  );
  if (results.length > 0) {
    return results[0].CategoryID;
  } else {
    const [result] = await connection.query(
      "INSERT INTO Categories (Name) VALUES (?)",
      [name]
    );
    return result.insertId;
  }
}

export async function updateBook(ISBN, newData) {
  const connection = await pool.getConnection();
  try {
    const { Title, PublicationDate, Author, Publisher, Category } = newData;

    const authorId = await findOrCreateAuthor(connection, Author);
    const publisherId = await findOrCreatePublisher(connection, Publisher);
    const categoryId = await findOrCreateCategory(connection, Category);

    const updateData = {
      Title,
      PublicationDate,
      AuthorID: authorId,
      PublisherID: publisherId,
      CategoryID: categoryId,
    };

    await connection.query("UPDATE Books SET ? WHERE ISBN = ?", [
      updateData,
      ISBN,
    ]);
  } catch (error) {
    throw new Error(`Failed to update book: ${error}`);
  } finally {
    connection.release();
  }
}

export async function addBook(newData) {
  const connection = await pool.getConnection();
  try {
    const { ISBN, Title, PublicationDate, Author, Publisher, Category } =
      newData;

    // Check if the ISBN already exists
    const [existingBook] = await connection.query(
      "SELECT ISBN FROM Books WHERE ISBN = ?",
      [ISBN]
    );
    if (existingBook.length > 0) {
      throw new Error("Book already exists");
    }

    const authorId = await findOrCreateAuthor(connection, Author);
    const publisherId = await findOrCreatePublisher(connection, Publisher);
    const categoryId = await findOrCreateCategory(connection, Category);

    const insertData = {
      ISBN,
      Title,
      PublicationDate,
      AuthorID: authorId,
      PublisherID: publisherId,
      CategoryID: categoryId,
      LanguageID: 1,
    };

    await connection.query("INSERT INTO Books SET ?", [insertData]);
  } catch (error) {
    throw new Error(`Failed to add book: ${error}`);
  } finally {
    connection.release();
  }
}

export async function getBookCopiesAndShelfDataByISBN(isbn) {
  try {
    // Query to get all book copies for the given ISBN
    const [bookCopiesRows] = await pool.query(
      "SELECT * FROM Book_Copies WHERE BookISBN = ?",
      [isbn]
    );

    if (bookCopiesRows.length === 0) {
      return { message: "No book copies found for the given ISBN." };
    }

    // Extract the unique ShelfID(s) from the book copies
    const shelfIDs = [...new Set(bookCopiesRows.map((row) => row.ShelfID))];

    // Query to get the shelf data for the extracted ShelfID(s)
    const [shelfRows] = await pool.query(
      "SELECT * FROM Shelves WHERE ShelfID IN (?)",
      [shelfIDs]
    );

    return {
      bookCopies: bookCopiesRows,
      shelves: shelfRows,
    };
  } catch (error) {
    console.error("Error fetching book copies and shelf data:", error);
    throw error;
  }
}

export async function getMember(memberID) {
  const query = `
    SELECT * FROM Member_Profile WHERE MemberID = ?
  `;
  try {
    const [rows] = await pool.query(query, [memberID]);
    return rows[0];
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch member");
  }
}

export async function getLibrarian(librarianID) {
  const query = `
    SELECT * FROM Librarians WHERE LibrarianID = ?
  `;
  try {
    const [rows] = await pool.query(query, [librarianID]);
    return rows[0]; // Assuming LibrarianID is unique
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch librarian");
  }
}

export async function getBookIssuerReceiver(issuerReceiverID) {
  const query = `
    SELECT * FROM Book_Issuer_Receiver WHERE IssuerReceiverID = ?
  `;
  try {
    const [rows] = await pool.query(query, [issuerReceiverID]);
    return rows[0]; // Assuming IssuerReceiverID is unique
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch book issuer/receiver");
  }
}
