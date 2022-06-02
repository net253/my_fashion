require("dotenv").config();
const mysql = require("mysql2");
const config = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
  database: process.env.DB_DATABASE,
};

const db = mysql.createPool(config).promise();

module.exports = db;
