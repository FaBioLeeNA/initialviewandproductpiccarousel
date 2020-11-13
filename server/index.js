const express = require('express');
let app = express();
db = require('./database/models.js');
let bodyparser = require('body-parser');
app.use(bodyparser.urlencoded({extended: true}));
app.use(express.json());

let port = 1238;
let models = require('./database/models.js');

app.listen(port, function(){
  console.log(`Listening on port '${port}`);
})

app.use(express.static('client/dist'));

app.get('/api/initialview', async function(){
  try{
    let results = await models.getAll();
    res.status(200).json(results);
  } catch(err) {
    res.status(404).send(err.message);
  }
})
//test test