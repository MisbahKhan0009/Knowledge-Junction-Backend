import express from "express";
import {
  getBooks,
  getBook,
  deleteBook,
  updateBook,
  createBook,
  getDevelopers,
} from "./database.js";
import cors from "cors";

const app = express();
app.use(express.json());
app.use(cors());

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

app.delete("/books/:ISBN", async (req, res) => {
  const ISBN = req.params.ISBN;
  try {
    await deleteBook(ISBN);
    res.status(204).send();
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to delete book" });
  }
});

app.put("/books/:ISBN", async (req, res) => {
  const ISBN = req.params.ISBN;
  const newData = req.body;
  try {
    await updateBook(ISBN, newData); // Call the updateBook function with ISBN and newData
    res.status(200).send("Book updated successfully");
  } catch (error) {
    console.error(error);
    res.status(500).send("Failed to update book");
  }
});

app.post("/books", async (req, res) => {
  const newBook = req.body;
  try {
    await createBook(newBook);
    res.status(201).send("Book created successfully");
  } catch (error) {
    console.error(error);
    res.status(500).send("Failed to create book");
  }
});

app.get("/developers", async (req, res) => {
  try {
    const developers = await getDevelopers();
    res.json(developers);
  } catch (error) {
    console.error("Error fetching developers:", error);
    res.status(500).json({ message: "Error fetching developers" });
  }
});

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

app.listen(8080, () => {
  console.log("Server listening on port 8080");
});
