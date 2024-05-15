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
  const [rows] = await pool.query("SELECT * FROM books");
  return rows;
}

export async function getBook(ISBN) {
  const [rows] = await pool.query(`SELECT * FROM books WHERE ISBN = ?`, [ISBN]);
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
    await connection.query("UPDATE books SET ? WHERE ISBN = ?", [
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

// export async function createNote(title, content) {
//   const [result] = await pool.query(
//     `INSERT INTO notes (title, content) VALUES (? , ?)`,
//     [title, content]
//   );
//   const id = result.insertId;

//   return getNote(id);
// }
