CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE Tab_classe(

id_classe int AUTO_INCREMENT NOT NULL,
descri_classe varchar(99) NOT NULL,
nivel varchar(12),
empresa_classe varchar(12),

PRIMARY KEY(id_classe));

CREATE TABLE  Tab_personagem(


id_personagem int AUTO_INCREMENT NOT NULL,
nome_personagem varchar(99) NOT NULL,
tamanho_personagem varchar(11),
cor_personagem varchar(19),
poder_ataque_personagem  int NOT NULL,
poder_defesa_personagem int NOT NULL,
id_classe int NOT NULL,
FOREIGN KEY(id_classe) REFERENCES  Tab_classe(id_classe),
PRIMARY KEY(id_personagem));

ALTER TABLE Tab_classe CHANGE nivel nivel_classe varchar(99);
INSERT INTO Tab_classe(empresa_classe,nivel_classe,descri_classe)VALUES("MARVEL","Alto","Valquírias");
INSERT INTO Tab_classe(empresa_classe,nivel_classe,descri_classe)VALUES("DC","Médio","Ferreiros");
INSERT INTO Tab_classe(empresa_classe,nivel_classe,descri_classe)VALUES("Disney","Alto","Plantas");
INSERT INTO Tab_classe(empresa_classe,nivel_classe,descri_classe)VALUES("NASA","Médio","Astronauta maluco");
INSERT INTO Tab_classe(empresa_classe,nivel_classe,descri_classe)VALUES("MICROSOFT","Baixo","Programador");

SELECT * FROM Tab_classe;

INSERT INTO Tab_personagem(nome_personagem,tamanho_personagem,cor_personagem,poder_ataque_personagem,poder_defesa_personagem,id_classe)VALUES("Incrível Fanfarrão","Grande","Amarela",99,55,5);
INSERT INTO Tab_personagem(nome_personagem,tamanho_personagem,cor_personagem,poder_ataque_personagem,poder_defesa_personagem,id_classe)VALUES("Coringa","Médio","Lilás",111,12,2);
INSERT INTO Tab_personagem(nome_personagem,tamanho_personagem,cor_personagem,poder_ataque_personagem,poder_defesa_personagem,id_classe)VALUES("Flor de mel","Pequeno","Rosa",11,2,3);
INSERT INTO Tab_personagem(nome_personagem,tamanho_personagem,cor_personagem,poder_ataque_personagem,poder_defesa_personagem,id_classe)VALUES("A máquina","Grande","Preta",2222,1111,5);
INSERT INTO Tab_personagem(nome_personagem,tamanho_personagem,cor_personagem,poder_ataque_personagem,poder_defesa_personagem,id_classe)VALUES("A moça","Média","Branca",1999,1999,1);

SELECT * FROM Tab_personagem WHERE poder_ataque_personagem>2000;

SELECT * FROM Tab_personagem WHERE poder_defesa_personagem BETWEEN 1000 AND 2000;

SELECT *  FROM Tab_personagem WHERE nome_personagem LIKE "%c%";

SELECT id_personagem,nome_personagem,tamanho_personagem,cor_personagem,Tab_classe.nivel_classe,Tab_classe.descri_classe
FROM Tab_personagem INNER JOIN Tab_classe ON Tab_personagem.id_classe=Tab_classe.id_classe ORDER BY id_personagem;

SELECT Tab_personagem.id_personagem,Tab_personagem.nome_personagem,Tab_classe.descri_classe  FROM  Tab_personagem  INNER JOIN Tab_classe ON  Tab_personagem.id_classe=Tab_classe.id_classe WHERE Tab_personagem.id_classe IN (5);


