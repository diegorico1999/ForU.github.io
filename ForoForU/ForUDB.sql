create database ForU;

use ForU;

create table comentarios(
	IdComentario int primary key AUTO_INCREMENT NOT NULL,
    Comentario varchar(250),
    Fecha datetime,
    idUsuario int,
    Tema varchar(250),
	Modificado boolean,
    FOREIGN KEY(idUsuario)REFERENCES usuarios(idUsuario)
);

create table usuarios(
	idUsuario int primary key AUTO_INCREMENT NOT NULL,
    Nombre varchar(250),
    contraseña varchar(250),
    correo varchar(250)
); 
ALTER TABLE usuarios MODIFY idUsuario INTEGER NOT NULL AUTO_INCREMENT;

create table temas(
	Titulo varchar(250)primary key,
    Creador varchar(250),
    Fecha datetime,
    Descripción varchar(250),
	Modificado boolean
); 