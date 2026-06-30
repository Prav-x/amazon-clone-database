USE amazon_clone_db;

SELECT *FROM users;

SELECT first_name,email
FROM users;

SELECT
*FROM products
WHERE STATUS = 'AVAILABLE';

SELECT
*FROM products
WHERE price > 50000;

SELECT 
*FROM sellers
where city = 'chennai';

SELECT 
*FROM products
ORDER BY price DESC LIMIT 5;

SELECT 
*FROM users
WHERE first_name like 'p%';

SELECT 
*FROM orders
WHERE payment_status = 'paid';

SELECT *FROM rating 
WHERE review = 5;

SELECT product_name, category_name
FROM products INNER JOIN categories
ON products.category_id= categories.category_id;

SELECT p.product_name, s.seller_name
FROM products p INNER JOIN sellers s
ON P.seller_id = s.seller_id;

SELECT o.order_id, c.first_name, o.total_amount
from orders o INNER JOIN users c
ON o.user_id = c.user_id;

SELECT o.order_id, u.first_name, pay.payment_method,pay.payment_status, pay.amount
FROM users u INNER JOIN orders o 
ON u.user_id = o.user_id
INNER JOIN payments pay 
ON o.order_id = pay.order_id;

SELECT p.product_name,c.category_name,s.seller_name,p.price
FROM products p INNER JOIN categories c 
ON p.category_id = c.category_id
INNER JOIN sellers s
ON p.seller_id = s.seller_id;

SELECT P.product_name,i.warehouse_location,i.quantity
FROM products P INNER JOIN inventory i
ON p.product_id = i.product_id;

SELECT u.first_name,p.product_name,oi.quantity,o.order_id
FROM users u INNER JOIN orders o
ON u.user_id = o.user_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id;

SELECT COUNT(*) FROM products;

SELECT AVG(price) FROM products;

SELECT MAX(price) FROM products;

SELECT MIN(price) FROM products;

SELECT SUM(quantity) FROM inventory;

SELECT city,
COUNT(*) FROM addresses
GROUP BY city
HAVING COUNT(*) > 2;

SELECT seller_id,
COUNT(*) FROM products
GROUP BY seller_id;

SELECT *FROM products
where price > (
		SELECT avg(price) 
		from products
);

CREATE VIEW available_products AS
SELECT product_name, price
FROM products
WHERE status = 'AVAILABLE';

CREATE VIEW customer_orders AS
SELECT u.first_name,
       o.order_id,
       o.total_amount
FROM users u
INNER JOIN orders o
ON u.user_id = o.user_id;



