CREATE DATABASE gersalarios;
use gersalarios;

CREATE TABLE cargo(
cargo_id int auto_increment PRIMARY KEY not null,
nome varchar(100) not null,
salario decimal(10,2) not null,
descricao varchar(100)
);

CREATE TABLE funcionario(
id int auto_increment PRIMARY KEY not null,
nome varchar(50) not null,
sobrenome varchar(100) not null,
email varchar(50) not null,
cargo_id int not null,
data_contratacao date not null,
FOREIGN KEY (cargo_id) REFERENCES cargo(cargo_id)
);

INSERT INTO cargo(nome, salario, descricao)
VALUES("DEV Front End",11000.00,"Trabalha na interface"),
	  ("DEV Back End",15000.00,"Trabalha nos bastidores"),
      ("DEV Full Stack",20000.00,"Trabalha em ambos");
     
select*from cargo
where salario >= 11000.00 AND salario <= 15000.00;

INSERT INTO funcionario(nome, sobrenome, email, cargo_id, data_contratacao)
VALUES("João","Silva","joao@gmail.com",3,"2024-09-25"),
	  ("Joana","Silveira","joana@gmail.com",3,"2024-09-25"),
      ("Lucas","Eduardo","lucas@gmail.com",1,"2024-09-25"),
      ("Diogo","Machado","diogo@gmail.com",2,"2024-09-25"),
      ("Lya","Silva","lya@gmail.com",2,"2024-09-25");
      
select*from funcionario;

select*from funcionario
where id = 1;

select * from funcionario
where data_contratacao = "2024-09-25";

update funcionario
set data_contratacao = "2024-09-24"
where id = 2;

delete from funcionario
where id = 2;