TRUNCATE TABLE order_items RESTART IDENTITY CASCADE;
TRUNCATE TABLE orders RESTART IDENTITY CASCADE;
TRUNCATE TABLE products RESTART IDENTITY CASCADE;
TRUNCATE TABLE users RESTART IDENTITY CASCADE;

INSERT INTO users (username) VALUES
                                 ('Ivan_Grozny'),
                                 ('Maria_Curie'),
                                 ('Petr_I'),
                                 ('Anna_Karenina'),
                                 ('Dmitry_Mendeleev'),
                                 ('Elon_Musk');

INSERT INTO products (name, price) VALUES
                                       ('iPhone 15 Pro', 1200.00),
                                       ('Samsung Galaxy S24', 1000.00),
                                       ('MacBook Air M3', 1500.00),
                                       ('Logitech Mouse', 30.00),
                                       ('Mechanical Keyboard', 100.00),
                                       ('Gaming Monitor 27"', 350.00),
                                       ('USB-C Cable', 10.00);

INSERT INTO orders (user_id) VALUES
                                 (1),
                                 (2),
                                 (1),
                                 (3),
                                 (6),
                                 (4);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
                                                             (1, 3, 1),
                                                             (1, 4, 1),
                                                             (1, 5, 1),
                                                             (2, 1, 1),
                                                             (3, 6, 2),
                                                             (4, 2, 1),
                                                             (5, 1, 10),
                                                             (6, 7, 1);