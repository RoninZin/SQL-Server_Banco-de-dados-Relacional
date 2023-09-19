CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	Id BIGINT IDENTITY (1,1),
	Categoria VARCHAR(255) NOT NULL,
	Energia VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO tb_classes(Categoria, Energia)
VALUES
('Atirador', 'Mana'),
('Support', 'Mana'),
('Mago', 'Mana'),
('Assassino', 'Stamina'),
('Tanque', 'Stamina');

SELECT  * FROM tb_classes;

CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY (1,1),
	Nickname VARCHAR(255) NOT NULL, -- No exercício esse atríbuto recebe o título de NOME
	Poder_Ataque DECIMAL NOT NULL,
	Poder_Defesa DECIMAL NOT NULL,
	Nivel INT NOT NULL,
	PRIMARY KEY (Id),
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);

INSERT INTO tb_personagens(Nickname, Poder_Ataque, Poder_Defesa, Nivel, classe_id)
VALUES
('Julinha', 2700.50, 390.70, 79, 4),
('Haze', 3009.10, 100.10, 86, 1),
('Luquas', 2000.00, 1000.00, 79, 3),
('Pallis', 2500.60, 200.00, 75, 1),
('Gabys', 1200.00, 3300.49, 90, 5),
('RoninZin', 100.00, 2800.70, 70, 2),
('IngY', 2300.50, 380.70, 67, 3),
('Kareen', 2200.50, 1200.70, 83, 2);

SELECT  * FROM tb_personagens;

SELECT  * FROM tb_personagens WHERE Poder_Ataque > 2000;

SELECT  * FROM tb_personagens WHERE Poder_Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nickname LIKE '%i%';

SELECT * FROM tb_personagens INNER JOIN tb_classesON tb_classes.Id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classesON tb_classes.Id = tb_personagens.classe_id WHERE classe_id = 3;
