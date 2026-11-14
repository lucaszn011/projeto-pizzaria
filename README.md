# Projeto Pizzaria

Projeto de estudo para praticar a criação de um banco de dados simples para uma pizzaria usando **PostgreSQL**.

O script organiza clientes, pizzas, pedidos e itens de cada pedido, além de inserir dados fictícios para testar as consultas.

## Tecnologias

- PostgreSQL
- SQL
- pgAdmin

## Conceitos praticados

- Criação de tabelas com `CREATE TABLE`
- Chaves primárias e estrangeiras
- Restrições `NOT NULL` e `CHECK`
- Inserção de registros com `INSERT INTO`
- Junção de tabelas com `JOIN`
- Cálculos com `SUM`
- Agrupamento com `GROUP BY`
- Filtro de grupos com `HAVING`
- Ordenação com `ORDER BY`

## Estrutura do banco

- **clientes:** nome e telefone dos clientes.
- **pizzas:** nome, sabor e preço das pizzas.
- **pedidos:** cliente e data de cada pedido.
- **itens_pedido:** pizzas, quantidades e valores de cada pedido.

## Como executar

1. Abra o pgAdmin e conecte-se ao PostgreSQL.
2. Abra o Query Tool em um banco de dados de estudo vazio.
3. Execute o arquivo `pizzaria.sql`.

O script cria as tabelas, insere dados fictícios e executa consultas de exemplo. Execute-o uma única vez em um banco vazio para evitar conflitos.

Projeto acadêmico para praticar modelagem e manipulação de dados.