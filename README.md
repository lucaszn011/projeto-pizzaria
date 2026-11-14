# Projeto Pizzaria

Projeto de estudo para praticar a criação de um banco de dados simples para uma pizzaria usando **PostgreSQL**.

O script cria tabelas para clientes, pizzas e pedidos, insere alguns registros de exemplo e relaciona os pedidos aos clientes por meio de uma chave estrangeira.

## Tecnologias

- PostgreSQL
- SQL
- pgAdmin

## Conceitos praticados

- Criação de tabelas com `CREATE TABLE`
- Chaves primárias com `PRIMARY KEY`
- Chave estrangeira com `FOREIGN KEY`
- Definição de tipos de dados
- Restrição `NOT NULL`
- Inserção de registros com `INSERT INTO`

## Estrutura do banco

- **clientes:** identifica os clientes e armazena nome e telefone.
- **pizzas:** armazena nome, sabor e preço das pizzas.
- **pedidos:** registra os pedidos e o cliente relacionado.

## Como executar

1. Abra o pgAdmin e conecte-se ao PostgreSQL.
2. Abra o Query Tool em um banco de dados de estudo.
3. Execute o arquivo `pizzaria.sql`.

O script cria as tabelas e insere dados de exemplo. Execute-o em um banco vazio para evitar conflitos com tabelas já existentes.

Projeto acadêmico para praticar os fundamentos de modelagem e manipulação de dados.
