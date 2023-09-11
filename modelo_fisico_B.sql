create database DBLivraria;
use DBLivraria;

create table Cliente(
idCliente int not null primary key,
nome varchar(80) not null,
endereco varchar(100) not null,
telefone char(11) not null);

create table Pedido(
idPedido int not null primary key,
idCliente int not null ,
foreign key (idCliente) references idCliente(Cliente),
data date not null,
status varchar(10) not null,
valor_total float not null);

create table Livro(
idLivro int not null primary key,
titulo varchar(80) not null,
autor varchar(80) not null,
preco float not null);

create table Item_Pedido(
idItem int not null primary key,
idPedido int not null,
foreign key (idPedido) references idPedido(Pedido),
idLivro int not null,
foreign key (idLivro) references idLivro(Livro),
quantidade int not null,
valor_unitario float not null,
valor_total float not null);