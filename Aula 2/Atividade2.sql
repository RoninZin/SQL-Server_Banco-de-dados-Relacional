CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Tamanho VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_categorias(Tamanho, Tipo)
VALUES
('Individual', 'Doce'),
('Individual', 'Salgada'),
('Grande', 'Doce'),
('Grande', 'Salgada'),
('Gigante', 'Salgada');

SELECT  * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR(255) NOT NULL,
	Valor DECIMAL(10,2) NOT NULL,
	Borda VARCHAR(255) NOT NULL,
	Pedacos INT NOT NULL,
	PRIMARY KEY (Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_pizzas(Nome, Valor, Borda, Pedacos, categoria_id)
VALUES
('Calabresa', 45.99, 'Cheddar', 8, 4),
('Mussarela', 45.99, 'Catupiry', 8, 4),
('M&M', 59.99, 'Doce de Leite', 8, 3),
('4 Queijos', 109.00, 'Cheddar', 16, 5),
('Pecorino', 30.99, 'Catupiry', 4, 2),
('Marguerita', 45.99, 'Cheddar', 8, 4),
('Prestígio', 32.99, 'Doce de Leite', 4, 1),
('Frango com Catupiry', 51.99, 'Cheddar', 8, 4);

SELECT  * FROM tb_pizzas;

SELECT  * FROM tb_pizzas WHERE Valor > 45;

SELECT  * FROM tb_pizzas WHERE Valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE Nome LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categoriasON tb_categorias.Id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoriasON tb_categorias.Id = tb_pizzas.categoria_id WHERE categoria_id = 1 OR categoria_id = 3;