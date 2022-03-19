CREATE DATABASE comerceD;
USE comerceD;
CREATE TABLE tab_produtos(
id_produto int AUTO_INCREMENT NOT NULL,
nome_produto varchar(99) NOT NULL,
preco_produto decimal(8,2) NOT NULL,
fornecedor_produto varchar(99),
status_produto boolean,
marca_produto varchar(33),
PRIMARY KEY(id_produto));
INSERT INTO tab_produtos(nome_produto,preco_produto,fornecedor_produto,status_produto,marca_produto) VALUES("Computador",2222.0,"Magazine Luiza",true,"DELL");
INSERT INTO tab_produtos(nome_produto,preco_produto,fornecedor_produto,status_produto,marca_produto)VALUES("Álcool em gel",22.0,"Armesim Cosméticos",false,"Armesim");
INSERT INTO tab_produtos(nome_produto,preco_produto,fornecedor_produto,status_produto,marca_produto)VALUES("Lâmpada",11.0,"Lamparinas e Cia",true,"Lampari");

SELECT nome_produto,CONCAT('R$',FORMAT(preco_produto,2,'pt-BR')) AS Preço FROM tab_produtos WHERE preco_produto>500;
SELECT nome_produto,CONCAT('R$',FORMAT(preco_produto,2,'pt-BR')) as Preço FROM tab_produtos WHERE preco_produto<500;

UPDATE tab_produtos SET status_produto=true WHERE id_produto=2;

SELECT * FROM tab_produtos;