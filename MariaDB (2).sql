CREATE TABLE cliente (
  id BIGINT, 
  idade BIGINT, 
  sexo CHAR, 
  dependentes BIGINT, 
  escolaridade VARCHAR(20), 
  tipo_cartao VARCHAR(10), 
  limite_credito DOUBLE, 
  valor_transacoes_12m DOUBLE, 
  qtd_transacoes_12m BIGINT);

SHOW TABLE;
desc cliente;
  
INSERT INTO cliente VALUES (768805383, 45, 'M', 3, 'ensino medio', 'Azul', 12691.51, 1144.90, 42);

INSERT INTO cliente VALUES (768805372, 40, 'F', 5, 'ensino fundamental', 'Vermelho', 15691.51, 1024.90, 37);
INSERT INTO cliente VALUES (818770008, 49, 'F', 5, 'mestrado', 'Azul', 8256.96, 1291.45, 33);
INSERT INTO cliente VALUES (713982108, 51, 'M', 3, 'mestrado', 'Verde', 3418.56, 1887.72, 20);
                            
SELECT * FROM cliente;

SELECT id, escolaridade, sexo FROM cliente;

SELECT id, escolaridade, sexo FROM cliente LIMIT 2;

SELECT AVG(idade) as Média from cliente

CREATE TABLE transacao (
    id_transacao INT,
    id_cliente BIGINT,
    data_compra DATE,
    valor FLOAT,
  	id_loja VARCHAR(20)
);
SHOW TABLE transacao;

drop TABLE demo;

desc transacao

add valor FLOAT;

ALTER TABLE transacao
MODIFY COLUMN valor DOUBLE;

ALTER TABLE transacao
DROP COLUMN valor;

SELECT * FROM transacao;

INSERT INTO transacao VALUES (1,768805383,'2021-06-10',50.74,'magalu'),
                             (2,768805399,'2021-06-13',30.90,'giraffas'),
                             (3,818770008,'2021-06-05',110.00,'postoshell'); 
                             
DELETE * transacao; 

UPDATE transacao set id_loja = 'teste' WHERE id_transacao = 1;

SELECT * FROM cliente WHERE sexo = 'F' OR escolaridade = 'Mestrado';

SELECT 
    id as codigo, 
    dependentes as filhos,
    valor_transacoes_12m as gastos 
from 
    cliente 
WHERE 
    sexo = 'F'
ORDER by id DESC
limit 3;

SELECT * from transacao ORDER by id_transacao DESC;