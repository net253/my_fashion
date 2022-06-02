const express = require("express");
const router = express.Router();
const conn = require("./libs/db");

router.get("/", (req, res) => res.send({ state: true, massage: "My Api." }));

router.post("/product", (req, res) => {
  const { gender = "", category = "", size = "", limit = 10, pageIndex = 1 } = req.body;
  const offSet = pageIndex * limit - limit;
  const columnName = ["GENDER", "CATEGOLY", "SIZE"];
  const filter = [gender, category, size].map((item, idx) => `${columnName[idx]} ${item ? "=" : "!="} ?`).join(" AND ");
  const sql = `SELECT * FROM t_product_list WHERE ${filter} ORDER BY PRODUCT_ID LIMIT ? OFFSET ? ;`;
  const parameter = [gender, category, size, limit, offSet];

  conn
    .execute(sql, parameter)
    .then(([rows]) => res.send({ state: true, result: rows }))
    .catch((err) => res.status(500).send({ state: false, err }));
});

router.post("/create", (req, res) => {
  const { customerID, productID, amount, deliveryAddress, status, paidDate } = req.body;
  const sql = "INSERT INTO t_order (CUSTOMER_ID, PRODUCT_ID, AMOUNT, DELIVERY_ADDRESS, STATUS, PAID_DATE, DATETIME) VALUES(?, ?, ?, ?, ?, ?, NOW()) ;";
  const parameter = [customerID, productID, amount, deliveryAddress, status, paidDate];

  conn
    .execute(sql, parameter)
    .then(() => res.send({ state: true, massage: "Order has been created successfully.", data: req.body }))
    .catch((err) => res.status(500).send({ state: false, err }));
});

router.post("/order", (req, res) => {
  const toDate = new Date().toISOString();
  const { dateStart = "1970-01-01 00:00:00", dateEnd = toDate, status = "", limit = 10, pageIndex = 1 } = req.body;
  const offSet = pageIndex * limit - limit;
  const sql = `SELECT * FROM t_order WHERE PAID_DATE BETWEEN ? AND ? AND STATUS ${status ? "=" : "!="} ? ORDER BY ORDER_ID LIMIT ? OFFSET ? ;`;
  const parameter = [dateStart, dateEnd, status, limit, offSet];

  conn
    .execute(sql, parameter)
    .then(([rows]) => res.send({ state: true, result: rows }))
    .catch((err) => res.status(500).send({ state: false, err }));
});

module.exports = router;
