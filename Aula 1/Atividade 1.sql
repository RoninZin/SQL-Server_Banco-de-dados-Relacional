CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR(255) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Salario DECIMAL(10,2) NOT NULL,
	Idade INT NOT NULL,
	Primary Key (Id),
);

INSERT INTO tb_colaboradores
(Nome, Cargo, Salario, Idade)
VALUES
('Breno Henrique', 'Diretor Chefe', 16299.99, 26),
('Julia Alexandrino', 'Gerente Senior', 16299.99, 21),
('Matheus Silva Queiroz', 'Programador Senior', 15099.99, 22),
('Shomara Quispe', 'Analista Pleno', 8999.99, 23),
('Victor Palliari', 'Programador Junior', 1999.99, 27);

SELECT * FROM tb_colaboradores WHERE Salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE Salario < 2000.00;

UPDATE tb_colaboradores SET Salario = 2800.00 WHERE Id = 5;