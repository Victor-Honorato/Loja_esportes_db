USE camisa5_store;

-- busca básica de todas as tabelas:
SELECT * FROM camisas_casual;
SELECT * FROM camisas_time;
SELECT * FROM chuteiras;
SELECT * FROM cliente;
SELECT * FROM endereco;

-- Listar todas as camisas do Flamengo
SELECT * FROM camisas_time
WHERE modelo = 'Flamengo';

-- Listar todas as camisas lançadas em 2024
SELECT * FROM camisas_time
WHERE ano_lancamento = '2024';

-- Listar todas as camisas lançadas em 2024 pelo Flamengo
SELECT * FROM camisas_time
WHERE ano_lancamento = '2024' AND modelo = 'Flamengo';

-- Calcular a média de preço das camisas por time
SELECT
    modelo,
    AVG(CAST(preco AS DECIMAL(10, 2))) AS media_preco
FROM
    camisas_time
GROUP BY
    modelo;
    
-- Camisas com baixa quantidade no estoque:
SELECT * FROM camisas_time
WHERE quantidade < 30;

-- Ordenar camisas por preço de forma decrescente:
SELECT * FROM camisas_time
ORDER BY CAST(preco AS DECIMAL(10, 2)) DESC;

-- Atualizar o preço de todas as camisas do Vasco:
UPDATE camisas_time
SET preco = '499.90'
WHERE modelo = 'Vasco';

-- Atualizar o estoque de uma camisa especifica do botafogo pelo id:
UPDATE camisas_time
SET quantidade = 0
WHERE id = 4;

-- Remover camisa do botafogo com estoque 0:
DELETE FROM camisas_time
WHERE quantidade = 0;

-- Junção da tabela cliente e endereço
SELECT * FROM cliente
JOIN endereco ON cliente.id = endereco.id;

-- Encontrar clientes de Planaltina:
SELECT * FROM cliente
JOIN endereco ON cliente.id = endereco.id
WHERE endereco.cidade = 'Planaltina';

-- Clientes nascidos após o ano 2000 com seus endereços:
SELECT * FROM cliente
JOIN endereco ON cliente.id = endereco.id
WHERE cliente.data_nascimento > '2000-01-01';

-- Totalizar o número de clientes por estado:
SELECT
    endereco.estado,
    COUNT(cliente.id) AS total_clientes
FROM
    cliente
JOIN
    endereco ON cliente.id = endereco.id
GROUP BY
    endereco.estado;

-- QUERIES PARA MONITORAMENTO E DESEMPENHO DO BANCO DE DADOS:

-- Verificar Uso de Espaço em Disco por Tabela:
SELECT table_name, ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.tables 
WHERE table_schema = 'camisa5_store';

-- Analisar o Plano de Execução de Consultas:
EXPLAIN SELECT * FROM camisas_time WHERE modelo = 'Flamengo';

-- Reparar Tabelas Corrompidas:
REPAIR TABLE camisas_time;

-- Otimizar Todas as Tabelas:
OPTIMIZE TABLE camisas_time;
