var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
  const {HOME, PLAIN_KEY, DUPLE_KEY} = process.env
  res.render('index',
      {title: 'Express', home: HOME, plainKey: PLAIN_KEY, dupleKey: DUPLE_KEY});
});

module.exports = router;
