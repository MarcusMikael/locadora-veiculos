-- Exibição de tabelas
SELECT * FROM veiculos;
SELECT * FROM clientes;
SELECT * FROM locacao;
SELECT * FROM pagamento;
SELECT * FROM manutencao;

-- Veiculos com ano de fabricação maior que 2019.
SELECT v.modelo, v.ano
FROM veiculos v 
WHERE ano > 2019;

-- Clientes ordenados pelo nome.
SELECT * FROM clientes ORDER BY nome;

-- Cliente que começa com o nome Marcus.
SELECT * FROM clientes WHERE nome LIKE 'Marcus%';

-- Veiculos do tipo moto com status disponíveis.
SELECT * FROM veiculos WHERE status = 'Disponível' AND tipo = 'Moto';

-- Informação geral do locamento, com nome do cliente, e informações do pagamento.
SELECT c.nome AS nome_cliente, l.valor_total_loc AS valor_Locacao, v.modelo AS modelo_Veiculo, p.valor_pag AS valor_pago, p.tipo_pag AS tipo_pagamento 
FROM locacao l
JOIN clientes c ON l.fk_id_cliente = c.id_cliente
JOIN veiculos v ON l.fk_id_veiculo = v.id_veiculo
JOIN pagamento p ON p.fk_id_locacao = l.id_locacao;

-- Mostra locações com valor acima de 300R$.
SELECT c.nome AS nome_cliente, l.data_loc AS data_locacao, l.valor_total_loc AS valor_locacao
FROM locacao l
JOIN clientes c ON l.fk_id_cliente = c.id_cliente
WHERE l.valor_total_loc > 300 ORDER BY valor_total_loc DESC;

-- Mostrar locações com data inicio de 12/03 a 30/03 de 2025.
SELECT l.data_loc AS data_locacao, l.data_fim_loc AS data_final, l.valor_total_loc AS valor_locacao
FROM locacao l
WHERE data_loc BETWEEN '2025-03-12' AND '2025-03-30';

-- Mostrar quantidade de locação, feito por determinado cliente.
SELECT c.nome, COUNT(l.id_locacao) AS quantidade_locacao
FROM clientes c
LEFT JOIN locacao l ON l.fk_id_cliente = c.id_cliente
GROUP BY c.nome;

-- Mostrar manutenção feita, e gasto de determinado veiculo.
SELECT fk_id_veiculo, v.modelo, m.descricao AS manutencao_feita, SUM(valor_man) AS total_gasto
FROM manutencao m
JOIN veiculos v ON m.fk_id_veiculo = v.id_veiculo
GROUP BY fk_id_veiculo, v.modelo, m.descricao;

-- Mostrar pagamentos feito por PIX e Cartão.
SELECT p.tipo_pag, p.data_pag, p.valor_pag
FROM pagamento p
WHERE tipo_pag IN ('PIX', 'Cartão');
