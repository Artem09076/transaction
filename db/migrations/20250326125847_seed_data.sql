-- migrate:up
INSERT INTO customers (first_name, last_name, email)
VALUES
('Иван', 'Петров', 'ivan.petrov@example.com'),
('Мария', 'Иванова', 'maria.ivanova@example.com');

INSERT INTO products (product_name, price)
VALUES
('Ноутбук', 1000.00),
('Смартфон', 500.00),
('Наушники', 100.00);

-- migrate:down
DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM customers;
