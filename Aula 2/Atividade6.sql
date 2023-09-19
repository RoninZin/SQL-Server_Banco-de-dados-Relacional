CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Tipo VARCHAR(255) NOT NULL,
	Area_Ensino VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_categorias(Tipo, Area_Ensino)
VALUES
('Bacharel', 'Exatas'),
('Licenciatura', 'Biológicas'),
('Tecnólogo', 'Tecnologia'),
('Tecnico', 'Mecânica'),
('Profissionalizante', 'Gastrônomia');

SELECT  * FROM tb_categorias;

CREATE TABLE tb_cursos(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR(255) NOT NULL,
	Valor DECIMAL(10,2) NOT NULL,
	Periodos INT NOT NULL,
	Avaliacao DECIMAL (4,2) NOT NULL,
	PRIMARY KEY (Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_cursos(Nome, Valor, Periodos, Avaliacao, categoria_id)
VALUES
('Análise e Desenvolvimento de Sistemas', 1299.99, 6, 9.9, 3),
('Engenharia Elétrica', 999.99, 8, 9.0, 1),
('Engenharia Mecânica', 999.99, 8, 9.5, 1),
('Biologia', 599.99, 8, 8.0, 2),
('Curso de confeiteiro', 199.99, 1, 9.2, 5),
('Ciência de dados', 1099.99, 6, 9.7, 3),
('Mecânica de motocicletas', 399.99, 1, 9.3, 4),
('Técnico em Eletromotores', 299.99, 1, 9.6, 4);

SELECT  * FROM tb_cursos;

SELECT  * FROM tb_cursos WHERE Valor > 500;

SELECT  * FROM tb_cursos WHERE Valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE Nome LIKE '%des%';

SELECT * FROM tb_cursos INNER JOIN tb_categoriasON tb_categorias.Id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos INNER JOIN tb_categoriasON tb_categorias.Id = tb_cursos.categoria_id WHERE categoria_id = 3;