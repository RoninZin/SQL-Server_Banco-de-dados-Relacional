CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Sala VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Nota DECIMAL(4,2) NOT NULL,
	Primary Key (Id),
);

INSERT INTO tb_alunos
(Nome, Sala, Idade, Nota)
VALUES
('Ingrid Manfrim', '14C', 25, 9.30),
('Julia Alexandrino', '3C', 21, 9.10),
('Eduardo Serodio', '14C', 26, 6.90),
('Gabriel Pimentel', '14C', 27, 7.00),
('Leonardo Machado', '4B', 27, 8.70),
('Rhyan Magalhães', '14C', 21, 6.50),
('Udson Costa', '3C', 22, 8.10),
('Valéria Carvalho', '4B', 22, 8.90);

SELECT * FROM tb_alunos WHERE Nota > 7.00;

SELECT * FROM tb_alunos WHERE Nota < 7.00;

UPDATE tb_alunos SET Nota = 7.10 WHERE	 Id = 4;