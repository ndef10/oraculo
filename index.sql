CREATE DATABASE oraculo;
\c oraculo;

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    foto VARCHAR (255),
    email VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL
);

oraculo=# SELECT * FROM usuario;
 id | nombre | foto | email | password 
----+--------+------+-------+----------
(0 filas)

CREATE TABLE totem (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    foto VARCHAR (255) NOT NULL,
    significado VARCHAR (2000) NOT NULL
);

oraculo=# SELECT * FROM totem;
 id | nombre | foto | significado 
----+--------+------+-------------
(0 filas)

CREATE TABLE historia (
    id SERIAL PRIMARY KEY,
    consulta BOOLEAN,
    eleccion VARCHAR (50) NOT NULL,
    usuario_id INT,
    fecha timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

oraculo=# SELECT * FROM historia;
 id | consulta | eleccion | usuario_id | fecha 
----+----------+----------+------------+-------
(0 filas)

CREATE TABLE carta (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    foto VARCHAR (255) NOT NULL,
    significado VARCHAR (2000) NOT NULL
);

oraculo=# SELECT * FROM carta;
 id | nombre | foto | significado 
----+--------+------+-------------
(0 filas)

oraculo