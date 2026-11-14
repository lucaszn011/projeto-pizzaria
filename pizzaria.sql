-- Projeto Pizzaria - PostgreSQL
-- Execute este script em um banco de dados vazio.

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE pizzas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sabor VARCHAR(100) NOT NULL,
    preco NUMERIC(10,2) NOT NULL CHECK (preco > 0)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(id),
    data_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE itens_pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INT NOT NULL REFERENCES pedidos(id),
    pizza_id INT NOT NULL REFERENCES pizzas(id),
    quantidade INT NOT NULL CHECK (quantidade > 0),
    valor_unitario NUMERIC(10,2) NOT NULL CHECK (valor_unitario > 0)
);

-- Dados fictícios para os testes.
INSERT INTO clientes (nome, telefone) VALUES
('Maria', '11930324597'),
('Lucas', '11930146582'),
('Rafael', '11987654321');

INSERT INTO pizzas (nome, sabor, preco) VALUES
('Pizza de Calabresa', 'Calabresa', 45.00),
('Pizza de Queijo', 'Queijo', 40.00),
('Pizza Portuguesa', 'Portuguesa', 50.00);

INSERT INTO pedidos (cliente_id) VALUES
(1), (1), (2), (3);

INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade, valor_unitario) VALUES
(1, 1, 1, 45.00),
(1, 2, 1, 40.00),
(2, 3, 2, 50.00),
(3, 1, 1, 45.00),
(4, 2, 2, 40.00);

-- 1. Lista os pedidos com o nome do cliente e a data.
SELECT
    p.id AS pedido,
    c.nome AS cliente,
    p.data_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
ORDER BY p.id;

-- 2. Calcula o valor total de cada pedido.
SELECT
    p.id AS pedido,
    c.nome AS cliente,
    SUM(ip.quantidade * ip.valor_unitario) AS total_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY p.id, c.nome
ORDER BY total_pedido DESC;

-- 3. Mostra clientes que fizeram mais de um pedido.
SELECT
    c.nome AS cliente,
    COUNT(p.id) AS quantidade_pedidos
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome
HAVING COUNT(p.id) > 1
ORDER BY quantidade_pedidos DESC;

-- 4. Mostra as pizzas mais pedidas em quantidade.
SELECT
    pi.nome AS pizza,
    SUM(ip.quantidade) AS unidades_vendidas
FROM pizzas pi
JOIN itens_pedido ip ON ip.pizza_id = pi.id
GROUP BY pi.id, pi.nome
ORDER BY unidades_vendidas DESC, pi.nome;