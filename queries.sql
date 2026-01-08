-- ПРОСТЫЕ ВЫБОРКИ

SELECT * FROM products
ORDER BY price DESC;

SELECT name, price
FROM products
WHERE price > 1000;

SELECT username
FROM users
WHERE username LIKE 'I%';



-- JOIN

SELECT
    u.username,
    o.id AS order_id,
    o.created_at
FROM orders o
JOIN users u ON o.user_id = u.id;

SELECT
    u.username AS client_name,
    o.id AS order_number,
    p.name AS product_name,
    p.price AS unit_price,
    oi.quantity
FROM order_items oi
JOIN orders o ON oi.order_id = o.id
JOIN products p ON oi.product_id = p.id
JOIN users u ON o.user_id = u.id
ORDER BY o.id;


SELECT u.username
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;



-- GROUP BY

SELECT
    o.id as order_id,
    SUM(p.price * oi.quantity) AS total_cost
FROM order_items oi
JOIN orders o ON oi.order_id = o.id
JOIN products p ON oi.product_id = p.id
GROUP BY o.id
ORDER BY total_cost DESC;

SELECT
    u.username AS "user",
    COUNT(o.id) AS orders_count
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.username
ORDER BY orders_count DESC;



-- UPDATE / DELETE

UPDATE products
SET price = price + 100
WHERE name = 'iPhone 15 Pro';

SELECT * FROM products WHERE name = 'iPhone 15 Pro';


DELETE FROM order_items
WHERE order_id = 6 AND product_id = 7;

SELECT * FROM order_items WHERE order_id = 6;
