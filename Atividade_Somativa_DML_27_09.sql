CREATE DATABASE projetodebanco_1e;
use projetodebanco_1e;

CREATE TABLE dependente(
dependente_id int auto_increment PRIMARY KEY,
cliente_id int,
nome varchar(50),
cpf varchar(50),
FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

CREATE TABLE cliente(
cliente_id int auto_increment PRIMARY KEY,
nome varchar(50),
cpf varchar(50),
rg varchar(50),
telefone varchar(50),
endereco varchar(100)
);

INSERT INTO cliente(nome, cpf, rg, telefone, endereco)
VALUES("Dimas","222.222.222-22","22 222 222-2","9999-9999","Vila Cebolaço Rua Carlinhos"),
	  ("Samuelzinho","479.506.388-50","00 000 000-0","98189-7434","Vila Cebolaço Rua Carlinhos"),
      ("João Jaypy","333.333.333-33","33 333 333-3","8888-8888","Vila Cebolaço Rua Carlinhos"),
      ("Lya Killa","462.911.288-02","00 000 000-0","99168-5315","Vila Cebolaço Rua Carlinhos"),
      ("Lucas Gomes","110.911.091-10","11 091 109-1","1109-1109","Vila Cebolaço Rua Carlinhos");

select * from cliente;

INSERT INTO dependente(cliente_id,nome, cpf)
VALUES(1,"Cleide","111.111.111-11"),
	  (2,"Jonas","222.222.222-22"),
      (3,"Ariovaldo","333.333.333-33"),
      (4,"Dalva","444.444.444-44"),
      (5,"Serjão","555.555.555-55"),
      (1,"Bluezão","666.666.666-66"),
      (2,"Juca Bala","777.777.777-77"),
      (3,"Newton","888.888.888-88");   

select * from dependente;

select * from cliente;

update cliente
set nome = "Samuel Dimas"
where cliente_id = 1;

update cliente
set nome = "Samuelzinho Freitas"
where cliente_id = 2;

update cliente
set nome = "Jaypy Pedro"
where cliente_id = 3;

delete from dependente
where dependente_id = 8;

delete from dependente
where dependente_id = 5;

delete from dependente
where dependente_id =9;

select * from dependente;

select * from cliente;
desc cliente;

select nome, endereco from cliente;