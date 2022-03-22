CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categorias(

id_categoria int AUTO_INCREMENT NOT NULL,
area_categoria varchar(99) NOT NULL,
marca_categoria varchar(99),

PRIMARY KEY(id_categoria));

CREATE TABLE tb_produtos(

id_produto int AUTO_INCREMENT NOT NULL,
nome_produto varchar(255) NOT NULL,
preco_produto decimal(8,2) NOT NULL,
id_categoria int NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria));


INSERT INTO tb_categorias(area_categoria,marca_categoria)VALUES("saúde","EletricsSau");
INSERT INTO tb_categorias(area_categoria,marca_categoria)VALUES("elétrica e computação","DELL");
INSERT INTO tb_categorias(area_categoria,marca_categoria)VALUES("esporte","Pretorian");
INSERT INTO tb_categorias(area_categoria,marca_categoria)VALUES("estudo","Foroni");
INSERT INTO tb_categorias(area_categoria,marca_categoria)VALUES("meio ambiente","R3CONNECT");


INSERT INTO tb_produtos(nome_produto,preco_produto,id_categoria) VALUES("Inalador",   99.9   , 1 );
INSERT INTO tb_produtos(nome_produto,preco_produto,id_categoria) VALUES("Luvas de guerra",  299.11    , 2  );
INSERT INTO tb_produtos(nome_produto,preco_produto,id_categoria) VALUES("Planta Grega",  11.99    ,    5 );
INSERT INTO tb_produtos(nome_produto,preco_produto,id_categoria) VALUES("Caderno",  5.99    ,    4 );
INSERT INTO tb_produtos(nome_produto,preco_produto,id_categoria) VALUES("mini-cinema",  3999.99    ,  2    );

SELECT * FROM tb_produtos WHERE preco_produto>50;

SELECT * FROM tb_produtos WHERE preco_produto BETWEEN 3 AND 60;

SELECT  * FROM tb_produtos WHERE nome_produto LIKE "%b%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria=tb_categorias.id_categoria;

UPDATE tb_produtos SET preco_produto=99.99 WHERE id_produto=1;

UPDATE tb_produtos SET id_categoria=3 WHERE id_produto=2;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria=tb_categorias.id_categoria  WHERE tb_categorias.area_categoria="elétrica e computação";


