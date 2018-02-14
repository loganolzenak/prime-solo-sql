const pg = require('pg');
const Pool = pg.Pool;

//this configures our pool. only need to change database name
const config = {
    database: 'music_library', //only thing to change for each app
    host:'localhost',
    posrt: 5432,
    max: 10,
    idleTimeoutMillis: 5000 // 5 seconds
}

//create a pool 
const pool = new pool(config);

module.exports=pool;