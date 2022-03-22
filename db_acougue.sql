CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;



CREATE TABLE Tab_categorias(
id_categoria int AUTO_INCREMENT NOT NULL,
animal_categoria varchar(99) NOT NULL,
qualidade_carnes varchar(99) NOT NULL,
PRIMARY KEY(id_categoria));



CREATE TABLE Tab_carnes(
id_carnes int AUTO_INCREMENT NOT NULL,
id_categoria int NOT NULL,
parte_carnes varchar(99),
peso_carnes decimal(8,2),
preco_carnes decimal(8,2),
PRIMARY KEY(id_carnes),
FOREIGN KEY(id_categoria) REFERENCES Tab_categorias(id_categoria));

INSERT INTO Tab_categorias(animal_categoria,qualidade_carnes)VALUES("bovina","1ª");
INSERT INTO Tab_categorias(animal_categoria,qualidade_carnes)VALUES("suína","1ª");
INSERT INTO Tab_categorias(animal_categoria,qualidade_carnes)VALUES("caprina","2ª");
INSERT INTO Tab_categorias(animal_categoria,qualidade_carnes)VALUES("caprina","1ª");

INSERT INTO Tab_carnes(id_categoria,parte_carnes,peso_carnes,preco_carnes)VALUES(  1 ,"picanha",999.9,59.9 );
INSERT INTO Tab_carnes(id_categoria,parte_carnes,peso_carnes,preco_carnes)VALUES(  2,"costela",1299.9,29.9 );
INSERT INTO Tab_carnes(id_categoria,parte_carnes,peso_carnes,preco_carnes)VALUES(  3,"pé",888.8,9.99 );
INSERT INTO Tab_carnes(id_categoria,parte_carnes,peso_carnes,preco_carnes)VALUES(  4,"pé",999.9,25.5);
INSERT INTO Tab_carnes(id_categoria,parte_carnes,peso_carnes,preco_carnes)VALUES(  1,"paleta",998.8,31.1);

DELETE FROM Tab_carnes WHERE id_carnes=5;

SELECT * FROM Tab_carnes;

UPDATE Tab_carnes SET id_carnes=5 WHERE id_carnes=6;

SELECT  parte_carnes,CONCAT("R$",FORMAT(preco_carnes,2,"pt-BR")) as Preço FROM Tab_carnes WHERE preco_carnes>50;

SELECT parte_carnes,CONCAT("R$",FORMAT(preco_carnes,2,"pt-BR")) as Preço FROM Tab_carnes WHERE preco_carnes BETWEEN 3 AND 60;

SELECT * FROM Tab_carnes WHERE parte_carnes LIKE "%b%";

SELECT * FROM Tab_carnes INNER JOIN Tab_categorias ON Tab_carnes.id_categoria=Tab_categorias.id_categoria;

SELECT CONCAT("gramas: ",FORMAT(peso_carnes,2,"pt-BR")) as Peso FROM Tab_carnes ;

ALTER TABLE Tab_carnes CHANGE peso_carnes peso_carnes_gramas decimal(8,2);

SELECT * FROM Tab_carnes INNER JOIN Tab_categorias ON Tab_carnes.id_categoria=Tab_categorias.id_categoria WHERE Tab_categorias.id_categoria=1;