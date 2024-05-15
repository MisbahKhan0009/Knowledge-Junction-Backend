const express = require("express");
const cors = require("cors");
const mysql = require("mysql");

const app = express();
const port = 5000;

// Create MySQL connection
const connection = mysql.createConnection({
  host: "your_mysql_host",
  user: "your_mysql_username",
  password: "your_mysql_password",
  database: "your_mysql_database",
});

connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database: " + err.stack);
    return;
  }
  console.log("Connected to MySQL database as id " + connection.threadId);
});

app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.post("/addUser", (req, res) => {
  const { name, country } = req.body;
  const insertQuery = "INSERT INTO users (name, country) VALUES (?, ?)";
  connection.query(insertQuery, [name, country], (err, result) => {
    if (err) {
      console.error("Error inserting user:", err);
      res.status(500).json({ message: "Error inserting user" });
    } else {
      console.log("User inserted successfully");
      res.json({ message: "User inserted successfully" });
    }
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`);
});

// make a sql command to make a table, table fields are id, name, imgUrl, role, contribution, socials. socials is also a table, it will have 4 row and 2 column, 1st column will contains github, facebook, twitter, portfolio. and 2nd column will contain their url they can be null
