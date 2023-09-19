CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Categoria VARCHAR(255) NOT NULL,
	Preco DECIMAL (10,2) NOT NULL,
	Condicao VARCHAR(255) NOT NULL,
	Primary Key (Id),
);

INSERT INTO tb_produtos
(Nome, Categoria, Preco, Condicao)
VALUES
('IPhone XIV', 'Eletrônicos', 14999.99, 'Novo'),
('Playstation 5', 'Eletrônicos', 2999.99, 'Usado'),
('Box Trilogia O Senhor dos Anéis', 'Livros', 124.99, 'Novo'),
('Jogos Vorazes - A trilogia', 'Livros', 80.00, 'Novo'),
('Tênis Nike Air Force', 'Roupas', 148.00, 'Novo'),
('Tênis Air Jordan 1 Mid', 'Roupas', 599.99, 'Usado'),
('Coleira Peitoral', 'Animais', 49.99, 'Usado'),
('Cama pet', 'Animais', 149.99, 'Novo');

SELECT * FROM tb_produtos WHERE Preco > 500.00;

SELECT * FROM tb_produtos WHERE Preco < 500.00;

UPDATE tb_produtos SET Preco = 109.99, Condicao = 'Usado' WHERE	 Id = 8;