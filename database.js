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
      WHERE
        Books.ISBN = ?
    `;
  const [rows] = await pool.query(query, [ISBN]);
  return rows[0];
}

export async function deleteBook(ISBN) {
  const connection = await pool.getConnection();
  try {
    await connection.query("DELETE FROM books WHERE ISBN = ?", [ISBN]);
  } catch (error) {
    throw new Error(`Failed to delete book: ${error}`);
  } finally {
    connection.release();
  }
}

export async function updateBook(ISBN, newData) {
  const connection = await pool.getConnection();
  try {
    await connection.query("UPDATE Books SET ? WHERE ISBN = ?", [
      newData,
      ISBN,
    ]);
  } catch (error) {
    throw new Error(`Failed to update book: ${error}`);
  } finally {
    connection.release();
  }
}
export async function createBook(newBook) {
  const connection = await pool.getConnection();
  try {
    await connection.query("INSERT INTO books SET ?", [newBook]);
  } catch (error) {
    throw new Error(`Failed to create book, check for duplicate ISBN`);
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

export async function getDevelopers() {
  const connection = await pool.getConnection();
  try {
    const [rows] = await connection.query("SELECT * FROM developers");
    return rows;
  } catch (error) {
    throw new Error(`Failed to fetch developers: ${error}`);
  } finally {
    connection.release();
  }
}
