CREATE TRIGGER before_product_insert
BEFORE INSERT
ON products
FOR EACH ROW
BEGIN 		
        IF NEW.price < 0 THEN 
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Price cannot be negative';
		END IF;
END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER reduce_stock_after_order
AFTER INSERT
ON order_items
FOR EACH ROW
BEGIN

    UPDATE inventory
    SET quantity = quantity - NEW.quantity
    WHERE product_id = NEW.product_id;

END //

DELIMITER ;
