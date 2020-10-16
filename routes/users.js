const express = require('express');
const router = express.Router();
const pool = require('../models/db');

router.get('/', function (req, res, next) {
  const sql = 'SELECT * FROM links';

  pool.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      result
    });
  });
});

router.get('/:id', function (req, res, next) {
  const sql = 'SELECT * FROM links where id = ?';

  pool.query(sql, req.params.id, function (err, result, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      user:result
    });
  });
});


module.exports = router;
