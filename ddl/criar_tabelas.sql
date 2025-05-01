-- Tabela Clientes
CREATE TABLE clientes (
id_cliente SERIAL PRIMARY KEY,
nome Varchar(110) NOT NULL,
email Varchar(150) UNIQUE NOT NULL,
CPF Varchar(11) UNIQUE NOT NULL,
telefone Varchar(15)
);

-- Tabela Veiculos
CREATE TABLE veiculos (
id_veiculo SERIAL PRIMARY KEY,
modelo VARCHAR(50) NOT NULL,
cor VARCHAR(50) NOT NULL,
ano INT NOT NULL,
placa VARCHAR(10) UNIQUE  NOT NULL,
tipo VARCHAR(7) CHECK(tipo IN ('Carro','Moto')) NOT NULL, -- restringe os valores a apenas 'Carro' ou 'Moto'.
status VARCHAR(20) DEFAULT 'Disponível' CHECK (status IN ('Disponível', 'Alugado', 'Manutenção'))
);

-- Tabela Locações
CREATE TABLE locacao (
id_locacao SERIAL PRIMARY KEY,
fk_id_cliente INT REFERENCES clientes(id_cliente), -- Chave estrangeira.
fk_id_veiculo INT REFERENCES veiculos(id_veiculo),
data_loc DATE NOT NULL,
data_fim_loc DATE,
valor_total_loc NUMERIC(10,2) CHECK (valor_total_loc >= 0)
);

-- Tabela Pagamento
CREATE TABLE pagamento (
id_pagamento SERIAL PRIMARY KEY,
fk_id_locacao INT REFERENCES locacao(id_locacao),
tipoPag Varchar(20) CHECK(tipoPag IN ('PIX', 'Dinheiro','Cartão')) NOT NULL,
data_pag DATE NOT NULL,
valor_pag NUMERIC(10,2) CHECK(valor_pag >= 0) NOT NULL
);

-- Tabela Manutenção 
CREATE  TABLE manutencao (
id_manutencao SERIAL PRIMARY KEY,
fk_id_veiculo INT REFERENCES veiculoos(id_veiculo),
descricao TEXT NOT NULL,
data_Man DATE NOT NULL,
valor_Man NUMERIC(10,2) CHECK(valor_Man >= 0)
);
