const express = require('express');
const router = express.Router();

//getting your pool --->  under this
const pool = require('../modules/pool');

const bodyParsar = require()


router.get('/', function(request , response){
    const sqlText = 'SELECT * FROM songs';
    pool.query(sqlText)

    //query was successful
    .then(function(result){
        console.log('get results:', result);
        response.send(songs);
    })
    //bad things could happen
    .catch(function(error){
        console.log('error on get:', error);
    })
})

router.post('/add', (request, response)=> {
    const song = request.body
    const sqlText = `INSERT INTO songs
    (artist, track, published, rank)
    VALUES ('$1', '$2', '$3', '$4')`;
    pool.query(sqlText,
    [song.artist, song.track, song.published, song.rank])
    .then( (result) => {

    })
})
module.exports = router;