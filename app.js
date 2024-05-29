import express from "express";
// const bodyParser = require("body-parser");
import {
  getBooks,
  getBook,
  deleteBook,
  addBook,
  getBookCopiesAndShelfDataByISBN,
  getMember,
  getBookIssuerReceiver,
  getLibrarian,
  updateBook,
} from "./database.js";
import cors from "cors";

const app = express();
app.use(express.json());
app.use(cors());
// app.use(bodyParser.json());

app.get("/books", async (req, res) => {
  try {
    const books = await getBooks();
    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch books" });
  }
});

app.get("/books/:ISBN", async (req, res) => {
  const ISBN = req.params.ISBN;
  try {
    const book = await getBook(ISBN);
    if (!book) {
      res.status(404).json({ error: "Book not found" });
    } else {
      res.json(book);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch book" });
  }
});
app.get("/members/:memberID", async (req, res) => {
  const memberID = req.params.memberID;
  try {
    const member = await getMember(memberID);
    if (!member) {
      res.status(404).json({ error: "Member not found" });
    } else {
      res.json(member);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch member" });
  }
});

app.get("/librarians/:librarianID", async (req, res) => {
  const librarianID = req.params.librarianID;
  try {
    const librarian = await getLibrarian(librarianID);
    if (!librarian) {
      res.status(404).json({ error: "Librarian not found" });
    } else {
      res.json(librarian);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch librarian" });
  }
});

app.get("/book-issuer-receivers/:issuerReceiverID", async (req, res) => {
  const issuerReceiverID = req.params.issuerReceiverID;
  try {
    const issuerReceiver = await getBookIssuerReceiver(issuerReceiverID);
    if (!issuerReceiver) {
      res.status(404).json({ error: "Book issuer/receiver not found" });
    } else {
      res.json(issuerReceiver);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch book issuer/receiver" });
  }
});

app.put("/update-books/:ISBN", async (req, res) => {
  const ISBN = req.params.ISBN;
  const newData = req.body;
  try {
    await updateBook(ISBN, newData);
    res.status(200).send("Book updated successfully");
  } catch (error) {
    console.error(error);
    res.status(500).send("Failed to update book");
  }
});

app.post("/add-book", async (req, res) => {
  const newData = req.body;
  try {
    await addBook(newData);
    res.status(201).send("Book added successfully");
  } catch (error) {
    console.error(error);
    if (error.message === "Book already exists") {
      res.status(400).send(error.message);
    } else {
      res.status(500).send("Failed to add book");
    }
  }
});

app.delete("/delete-book/:ISBN", async (req, res) => {
  const ISBN = req.params.ISBN;
  const confirmation = req.body.confirmation; // Assuming confirmation is sent in the request body
  if (confirmation.toUpperCase() !== "YES") {
    res.status(400).send("Confirmation not provided, rolling back...");
    return;
  }

  try {
    await deleteBook(ISBN);
    res.status(200).send("Book deleted successfully");
  } catch (error) {
    console.error(error);
    res.status(500).send("Failed to delete book");
  }
});

app.get("/shelf/:isbn", async (req, res) => {
  const { isbn } = req.params;
  try {
    const data = await getBookCopiesAndShelfDataByISBN(isbn);
    res.json(data);
  } catch (error) {
    res.status(500).json({ error: "An error occurred while fetching data." });
  }
});

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

app.listen(8080, () => {
  console.log("Server listening on port 8080");
});
