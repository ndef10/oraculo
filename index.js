require('dotenv').config();
const express = require('express');

const app = express();

const getDate = require('./database');

const puerto = process.env.PORT || 7788;
app.listen(puerto, console.log('Servidor en puerto: ', puerto));

app.get('/', async (req, res) => {
    res.send('aqui ira la accion!!!!!!!!1')
});

