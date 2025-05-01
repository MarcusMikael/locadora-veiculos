--INSERT Tabela Cliente
INSERT INTO clientes (nome, email, CPF, telefone) VALUES
('João Silva', 'joao.silva@email.com','12345678901', '(89)99444-1111'),
('Maria Oliveira', 'maria.oliveira@email.com', '12345678902', '(89)99444-2222'),
('Carlos Santos', 'carlos.santos@email.com', '12345678903', '(89)99444-3333'),
('Ana Souza', 'ana.souza@email.com', '12345678904', '(89)99444-4444'),
('Pedro Rocha', 'pedro.rocha@email.com', '12345678905', '(89)99444-5555'),
('Marcus Mikael', 'marcus@gmail.com', '12345678906', '(89)99444-6666'),
('Anderson Soares', 'anderson@unifsa.com.br', '12345678907', '(89)99444-7777'),
('Igor Nunes', 'igor@gmail.com', '12345678908', '(89)99444-8888'),
('Juliana Melo', 'juliana@gmail.com', '12345678909', '(89)99444-9999'),
('Lucas Rocha', 'lucas@gmail.com', '12345678910', '(89)99444-1000'),
('Alice Oliveira', 'alice@gmail.com', '12345678911', '89 99444-1100'),
('Carol Silva', 'carol@gmail.com', '12345678912', '(89)99444-1200');

-- INSERT Tabela Veiculos
INSERT INTO veiculos (modelo, cor, ano,placa, tipo, status) VALUES
('Corolla XEi', 'Cinza', 2020, 'ABC1A23', 'Carro', 'Disponível'),
('Civic EXL', 'Vermelho', 2019, 'DEF2B34', 'Carro', 'Alugado'),
('HB20 Comfort', 'Branco', 2021, 'GHI3C45', 'Carro', 'Manutenção'),
('Palio Fire', 'Branco', 2010, 'JKL4D56', 'Carro', 'Disponível'),
('Onix Plus', 'Preto', 2020, 'MNO5E67', 'Carro', 'Disponível'),
('CG 160', 'Azul', 2021, 'PQR6F78', 'Moto', 'Alugado'),
('XRE 300', 'Vermelho', 2022, 'STU7G89', 'Moto', 'Disponível'),
('Fazer 250', 'Vermelho', 2018, 'VWX8H90', 'Moto', 'Manutenção'),
('Spin LT', 'Prata', 2020, 'YZA9I01', 'Carro', 'Disponível'),
('Biz 110i', 'Preto', 2012, 'BCD0J12', 'Moto', 'Disponível');

-- INSERT Tabela Locação
INSERT INTO locacao (fk_id_cliente, fk_id_veiculo, data_loc, data_fim_loc, valor_total_loc ) VALUES
(1, 1, '2024-12-01', '2024-12-05', 500.00),
(2, 2, '2025-01-10', '2025-01-15', 600.00),
(3, 4, '2025-02-01', '2025-02-03', 200.00),
(4, 5, '2025-03-12', '2025-03-18', 550.00),
(5, 6, '2025-04-01', '2025-04-10', 250.00),
(6, 7, '2025-04-10', '2025-04-24', 700.00),
(7, 9, '2025-03-20', '2025-03-25', 480.00),
(8, 10, '2025-02-15', '2025-02-17', 150.00),
(9, 3, '2025-01-05', NULL, 0.00), -- Locação em  andamento
(10, 8, '2025-03-01', '2025-03-04', 270.00);

-- INSERT Tabela Pagamento
INSERT INTO pagamento (fk_id_locacao, tipoPag, data_pag, valor_pag) VALUES
(1, 'Cartão', '2024-12-05', 500.00),
(2, 'Pix', '2025-01-15', 600.00),
(3, 'Dinheiro', '2025-02-03', 200.00),
(4, 'Pix', '2025-03-18', 550.00),
(7, 'Cartão', '2025-03-25', 480.00),
(8, 'Dinheiro', '2025-02-17', 150.00),
(9, 'Cartão', '2025-01-08', 0.00), -- Não pago ainda
(10, 'Pix', '2025-03-04', 270.00),
(5, 'Cartão', '2025-04-15', 250.00),
(6, 'Pix', '2025-04-20', 700.00);

--INSERT Tabela Manutencao
INSERT INTO manutencao (fk_id_veiculo, descricao, data_Man, valor_Man) VALUES
(3, 'Troca de óleo e revisão dos freios', '2025-03-01', 250.00),
(8, 'Troca de pneu e balanceamento', '2025-02-20', 180.00),
(3, 'Substituição da bateria', '2025-04-10', 320.00), -- em andamento
(7, 'Ajuste na suspensão dianteira', '2025-01-15', 210.00),
(2, 'Revisão geral após 30.000 km', '2024-12-10', 600.00),
(1, 'Lavagem e polimento', '2025-03-05', 90.00),
(9, 'Alinhamento e balanceamento', '2025-01-20', 150.00),
(10, 'Troca de corrente', '2025-04-01', 140.00),
(6, 'Troca de vela e filtro de ar', '2025-02-10', 130.00),
(5, 'Correção de pintura lateral', '2025-03-15', 310.00);

