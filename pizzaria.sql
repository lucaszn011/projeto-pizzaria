CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

INSERT INTO clientes (nome, telefone)
VALUES
('Maria', '11930324597'),
('Lucas', '11930146582');


CREATE TABLE pizzas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sabor VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

INSERT INTO pizzas (nome, sabor, preco)
VALUES
('Pizza de Calabresa', 'Calabresa', 45.00),
('Pizza de Queijo', 'Queijo', 40.00);


CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pedidos (cliente_id)
VALUES (1);
