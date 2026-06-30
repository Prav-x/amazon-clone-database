use amazon_clone_db;

DELIMITER //

CREATE PROCEDURE get_all_users()
BEGIN 

    SELECT *
    FROM users;

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE get_all_products()
BEGIN
	SELECT *
    FROM products;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE get_products_by_categories(IN category_id INT)
BEGIN
	SELECT *
    FROM products
    WHERE category_id = id;
END //

DELIMITER ;


DELIMITER //







