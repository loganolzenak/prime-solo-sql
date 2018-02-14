const express = require('express');
const app = require();


// setup body parser to handle POST body
const bodyParaser = require('body-parser');
app.use(bodyParaser.urlendoded({extended: true}));

// setup songs router 



const port = 5000;
app.listen(port, function(){
  console.log('listening on port ${port}.');
});
