# Loja_esportes_db

Loja de esportes Camisa5 Store - Banco de Dados
Este é um exemplo de criação de um banco de dados para a Camisa5 Store, uma loja fictícia que vende camisas de times, camisas casuais e chuteiras. O banco de dados contém tabelas para cada categoria de produto, informações de clientes e endereços.

Estrutura do Banco de Dados
Tabela camisas_time
id: Identificador único da camisa (Chave Primária)
tamanho: Tamanho da camisa
modelo: Nome do time ou seleção associado à camisa
ano_lancamento: Ano de lançamento da camisa
preco: Preço da camisa
quantidade: Quantidade em estoque
Tabela camisas_casual
id: Identificador único da camisa casual (Chave Primária)
tamanho: Tamanho da camisa
marca: Marca da camisa
preco: Preço da camisa
quantidade: Quantidade em estoque
Tabela chuteiras
id: Identificador único da chuteira (Chave Primária)
tamanho: Tamanho da chuteira
marca: Marca da chuteira
tipo: Tipo de chuteira (Trava, Society, Futsal)
preco: Preço da chuteira
quantidade: Quantidade em estoque
Tabela cliente
id: Identificador único do cliente (Chave Primária)
nome: Nome do cliente
telefone: Número de telefone do cliente
data_nascimento: Data de nascimento do cliente
Tabela endereco
id: Identificador único do endereço (Chave Primária)
endereco1: Endereço principal do cliente
cidade: Cidade do cliente
estado: Estado do cliente
pais: País do cliente
Populando o Banco de Dados
O banco de dados é populado com dados de exemplo para demonstrar seu funcionamento. As instruções INSERT INTO adicionam registros às tabelas.

Modificações na Tabela cliente
A tabela cliente é modificada para aumentar a capacidade do campo nome para 100 caracteres.

Modificações na Tabela endereco
A tabela endereco é modificada para aumentar a capacidade do campo endereco1 para 100 caracteres.
