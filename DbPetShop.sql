create database DbPetShop;
use DbPetShop;
-- questão 1

create table Cliente(
ID int primary key not null auto_increment,
CPF char(14) not null,
nome varchar(40) not null,
Email varchar(30) not null,
endereço varchar(60) not null );

create table Animal(
ID int primary key not null auto_increment, 
tipo varchar(20) not null,
nome_animal varchar(30) not null,
dono varchar(40) not null,
sexo char(1) not null,
data_nascimento date not null,
ID_cliente_fk int  not null,
foreign key (ID_Cliente_fk) references Cliente(ID)
 );
 
 create table Serviço(
 ID  int primary key not null,
 descrição varchar(50) not null,
 valor double 
 );
 
  -- questão 2
 alter table Animal add raça varchar(20) not null after data_nascimento;
  -- questão 3
  alter table Serviço add tempo_medio time not null after valor;
   -- questão 4
 alter table Cliente add telefone char(11) not null after nome; -- esqueci de adicionar tel quando criei a tabela
 alter table Cliente change telefone celular char(11) not null;
  -- questão 5
 alter table Cliente drop endereço; 
 alter table Cliente add rua varchar(30) not null after celular;
  alter table Cliente add numero int not null after rua;
   alter table Cliente add complemento varchar(20) after numero;
    alter table Cliente add bairro varchar(30) not null after complemento;
     alter table Cliente add cidade varchar(20) not null after bairro;
      alter table Cliente add CEP char(9) not null after cidade;
