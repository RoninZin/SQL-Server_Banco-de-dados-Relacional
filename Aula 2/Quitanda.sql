USE db_quitanda;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY Nome ASC; --menor pro maior

SELECT * FROM tb_produtos ORDER BY Preco DESC; --maior pro menor

SELECT * FROM tb_produtos WHERE NOT Id = 1;

SELECT * FROM tb_produtos WHERE Id != 1;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Descricao)
VALUES
('Abacate', 25, '2023-09-19', 08.00, '')

SELECT * FROM tb_produtos
WHERE Preco IN(8,15,16) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 8 AND 15;

SELECT * FROM tb_produtos WHERE Nome LIKE '%a%'; -- o % é o meu coringa, que é onde eu não sei exatamente o q tem

SELECT COUNT (*) AS 'NUMERO DE LINHAS' FROM tb_produtos;

SELECT SUM (Preco) AS 'VALOR TOTAL DOS PRODUTOS' FROM tb_produtos;

SELECT AVG (Preco) AS 'PREÇO MÉDIO DOS PRODUTOS' FROM tb_produtos;

SELECT MAX (Preco) AS 'PREÇO MÁXIMO DOS PRODUTOS' FROM tb_produtos;

SELECT MIN (Preco) AS 'PREÇO MÍNIMO DOS PRODUTOS' FROM tb_produtos;

-- RELACIONAMENTO DE TABELAS

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (Descricao)VALUES ('Frutas'),('Verduras'),('Legumes'),('Temperos'),('Ovos'),('outros');DROP TABLE tb_produtos;CREATE TABLE tb_produtos(	Id BIGINT IDENTITY (1,1),	Nome VARCHAR(255) NOT NULL,	Quantidade INT,	dtValidade DATE,	Preco DECIMAL(10,2),	PRIMARY KEY (Id),	categoria_id BIGINT,	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id));SELECT * FROM tb_produtos;SELECT * FROM tb_categorias;INSERT INTO tb_produtos(Nome, Quantidade, dtValidade, Preco, categoria_id)VALUES('Abacate', 45, '2023-09-19', 5.25, 1);INSERT INTO tb_produtos (Nome, Quantidade, dtvalidade, Preco, categoria_id)VALUES('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Cebola', 1020, '2022-03-08', 5.00, 3),('Ovo Branco', 1000, '2022-03-07', 15.00, 5),('Agrião', 1500, '2022-03-06', 3.00, 2),('Cenoura', 1800, '2022-03-09', 3.50, 3),('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);SELECT tb_produtos.Id, Nome, Quantidade, dtValidade, Preco, categoria_id, DescricaoFROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.Id = tb_produtos.categoria_id;SELECT tb_produtos.Id, Nome, Quantidade, dtValidade, Preco, categoria_id, DescricaoFROM tb_categorias LEFT JOIN tb_produtosON tb_categorias.Id = tb_produtos.categoria_id;INSERT INTO tb_produtos (Nome, Quantidade, Preco)VALUES('Panela', 1118, 150.80);SELECT tb_produtos.Id, Nome, Quantidade, dtValidade, Preco, categoria_id, DescricaoFROM tb_categorias RIGHT JOIN tb_produtosON tb_categorias.Id = tb_produtos.categoria_idWHERE Nome LIKE '%n%' ORDER BY categoria_id ASC;