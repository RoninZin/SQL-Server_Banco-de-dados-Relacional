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

SELECT * FROM tb_produtos WHERE Nome LIKE '%a%'; -- o % � o meu coringa, que � onde eu n�o sei exatamente o q tem

SELECT COUNT (*) AS 'NUMERO DE LINHAS' FROM tb_produtos;

SELECT SUM (Preco) AS 'VALOR TOTAL DOS PRODUTOS' FROM tb_produtos;

SELECT AVG (Preco) AS 'PRE�O M�DIO DOS PRODUTOS' FROM tb_produtos;

SELECT MAX (Preco) AS 'PRE�O M�XIMO DOS PRODUTOS' FROM tb_produtos;

SELECT MIN (Preco) AS 'PRE�O M�NIMO DOS PRODUTOS' FROM tb_produtos;

-- RELACIONAMENTO DE TABELAS

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categorias