-- apagar banco
drop database db_quitanda;
-- criar banco
create database db_quitanda;
-- mostrar bancos de dado
show databases;
-- usar bancos de dados
use db_quitanda;
-- criar tabela
CREATE TABLE tab_produtos(



id bigint AUTO_INCREMENT,

nome varchar(255) NOT NULL ,

quantidade int NOT NULL,

data_validade date NOT NULL,

preco decimal NOT NULL,

PRIMARY KEY(id));

describe tab_produtos;

-- inserir em TABELA    (                                      )VALORES(                             );
INSERT INTO tab_produtos(nome, quantidade, data_validade, preco) VALUES ("chuchu",9,"2022-03-25",5.00);

-- inserir em TABELA    (                                      )VALORES(                              )
INSERT INTO tab_produtos(nome, quantidade, data_validade, preco) VALUES ("tomate",20,"2022-03-20",9.00);

INSERT INTO tab_produtos(nome, quantidade, data_validade,preco) VALUES("banana",99,"2022-03-19",5.20);

-- seleciona TUDO de TABELA
SELECT * FROM tab_produtos;

-- altera TABELA modifica PRECO TIPO_DADO();
ALTER TABLE tab_produtos MODIFY preco decimal(8,2);

select * from tab_produtos;

-- Atualiza TABELA em colocação EM ATRIBUTO onde determinado ATRIBUTO É
UPDATE tab_produtos SET preco=6.22 WHERE id=1;

SELECT * FROM tab_produtos;

DELETE FROM tab_produtos WHERE id=1;

-- deleta de TABELA onde ATRIBUTO é

SELECT * FROM tab_produtos;

-- Altera a estrutura da TABELA adiciona UM ATRIBUTO TIPO DE DADO();
ALTER TABLE tab_produtos ADD descricao varchar(255);

SELECT * FROM tab_produtos;


UPDATE tab_produtos SET descricao="é um tomate vermelhinho" WHERE id=2;


SELECT * FROM tab_produtos;

-- altera tabela TABELA apaga ATRIBUTO
ALTER TABLE tab_produtos DROP descricao;

SELECT * FROM tab_produtos;




-- altera tabela TABELA muda ATRIBUTO ATRIBUTOMUDADO FORMATO();
ALTER TABLE tab_produtos CHANGE preco precoBR decimal(8,2);

-- A concatenar para REAIS brasileiros
-- seleciono o ATRIBUTO NOME, --ATRIBUTO-- concateno para( ' REAIS ', formato(ATRIBUTO A SER CONCATENADO E FORMATADO,CASAS ATRÁS DA VÍRGULA,'NOMEFORMATO')) como NOME A APARECER NO ATRIBUTO FORMATADO de TABELA;
SELECT nome, CONCAT('R$', FORMAT(preco,2,'pt-BR')) AS preço FROM tab_produtos;

-- seleciono ATRIBUTO de TABELA --e o mostro-- onde ATRIBUTO é maior que
SELECT preco from tab_produtos WHERE preco > 5;

-- seleciono ATRIBUTO de TABELA --e o mostro-- onde ATRIBUTO é igual
SELECT * FROM tab_produtos WHERE nome="tomate";




INSERT INTO tab_produtos VALUES("azeite", 9, "2022-09-05",22.0);




