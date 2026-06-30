USE amazon_clone_db;

INSERT INTO users (first_name,last_name,email,phone,password)
VALUES 
('Praveen','Senthil','praveen@gmail.com','9876543210','pass123'),
('Arun','Kumar','arun@gmail.com','9876543211','pass123'),
('Karthik','Raj','karthik@gmail.com','9876543212','pass123'),
('Priya','Sharma','priya@gmail.com','9876543213','pass123'),
('Divya','Rani','divya@gmail.com','9876543214','pass123'),
('Rahul','Verma','rahul@gmail.com','9876543215','pass123'),
('Sneha','Iyer','sneha@gmail.com','9876543216','pass123'),
('Vikram','Singh','vikram@gmail.com','9876543217','pass123'),
('Anitha','Devi','anitha@gmail.com','9876543218','pass123'),
('Suresh','Babu','suresh@gmail.com','9876543219','pass123');

INSERT INTO sellers(seller_name, company_name, email, phone, gst_number, address, city, state, pincode)
VALUES 
('Tech World','Tech World Pvt Ltd','techworld@gmail.com','9000000001','33ABCDE1234F1Z5','Anna Nagar','Chennai','Tamil Nadu','600040'),
('Mobile Hub','Mobile Hub Pvt Ltd','mobilehub@gmail.com','9000000002','33ABCDE1234F1Z6','T Nagar','Chennai','Tamil Nadu','600017'),
('Fashion Point','Fashion Point Ltd','fashion@gmail.com','9000000003','33ABCDE1234F1Z7','RS Puram','Coimbatore','Tamil Nadu','641002'),
('Book Store','Book Store India','books@gmail.com','9000000004','33ABCDE1234F1Z8','Peelamedu','Coimbatore','Tamil Nadu','641004'),
('Home Needs','Home Needs Pvt Ltd','home@gmail.com','9000000005','33ABCDE1234F1Z9','KK Nagar','Madurai','Tamil Nadu','625020');

INSERT INTO categories
(category_name, description)
VALUES
('Mobiles','Smartphones and Accessories'),
('Laptops','Laptops and Notebooks'),
('Electronics','Electronic Gadgets'),
('Fashion','Clothing and Accessories'),
('Books','Educational and Story Books'),
('Home & Kitchen','Home Appliances'),
('Beauty','Beauty Products'),
('Sports','Sports Equipment'),
('Grocery','Daily Essentials'),
('Toys','Kids Toys');

INSERT INTO products(seller_id,category_id,product_name,description,brand,price,status)
VALUES
(1,1,'iPhone 15','Apple Smartphone','Apple',79999.00,'AVAILABLE'),
(1,1,'Galaxy S24','Samsung Smartphone','Samsung',74999.00,'AVAILABLE'),
(2,2,'MacBook Air M3','Apple Laptop','Apple',119999.00,'AVAILABLE'),
(2,2,'Dell Inspiron 15','Dell Laptop','Dell',65999.00,'AVAILABLE'),
(2,2,'HP Pavilion','HP Laptop','HP',62999.00,'AVAILABLE'),
(1,3,'Sony Headphones','Wireless Headphones','Sony',9999.00,'AVAILABLE'),
(1,3,'Boat Airdopes','Bluetooth Earbuds','Boat',2499.00,'AVAILABLE'),
(3,4,'Men''s T-Shirt','Cotton T-Shirt','Puma',999.00,'AVAILABLE'),
(3,4,'Women''s Kurti','Casual Kurti','Biba',1499.00,'AVAILABLE'),
(3,4,'Jeans','Slim Fit Jeans','Levi''s',2499.00,'AVAILABLE'),
(4,5,'Atomic Habits','Self Help Book','Penguin',599.00,'AVAILABLE'),
(4,5,'Rich Dad Poor Dad','Finance Book','Fingerprint',450.00,'AVAILABLE'),
(5,6,'Mixer Grinder','Kitchen Appliance','Preethi',4999.00,'AVAILABLE'),
(5,6,'Rice Cooker','Electric Cooker','Prestige',3499.00,'AVAILABLE'),
(5,6,'Induction Stove','Cooking Appliance','Philips',2999.00,'AVAILABLE'),
(5,7,'Face Wash','Skin Care','Himalaya',199.00,'AVAILABLE'),
(5,7,'Shampoo','Hair Care','Dove',299.00,'AVAILABLE'),
(5,7,'Body Lotion','Moisturizer','Nivea',399.00,'AVAILABLE'),
(5,8,'Cricket Bat','Sports Bat','SG',1999.00,'AVAILABLE'),
(5,8,'Football','Size 5 Ball','Nivia',899.00,'AVAILABLE'),
(5,8,'Badminton Racket','Sports Racket','Yonex',2499.00,'AVAILABLE'),
(5,9,'Basmati Rice 5kg','Grocery Item','India Gate',699.00,'AVAILABLE'),
(5,9,'Sunflower Oil 1L','Cooking Oil','Fortune',189.00,'AVAILABLE'),
(5,9,'Sugar 1kg','Grocery','Aashirvaad',55.00,'AVAILABLE'),
(5,10,'Teddy Bear','Soft Toy','Funskool',799.00,'AVAILABLE'),
(5,10,'Remote Car','RC Toy','Hot Wheels',1499.00,'AVAILABLE'),
(5,10,'Building Blocks','Kids Toy','Lego',2999.00,'AVAILABLE'),
(1,3,'Smart Watch','Fitness Watch','Noise',3499.00,'AVAILABLE'),
(2,2,'Lenovo ThinkPad','Business Laptop','Lenovo',78999.00,'AVAILABLE'),
(1,1,'OnePlus 13','Android Smartphone','OnePlus',54999.00,'AVAILABLE');
		
INSERT INTO inventory (product_id,quantity,warehouse_location)
VALUES 
(1,50,'Chennai Warehouse'),
(2,45,'Chennai Warehouse'),
(3,25,'Bangalore Warehouse'),
(4,30,'Bangalore Warehouse'),
(5,20,'Hyderabad Warehouse'),
(6,60,'Chennai Warehouse'),
(7,100,'Chennai Warehouse'),
(8,80,'Coimbatore Warehouse'),
(9,70,'Coimbatore Warehouse'),
(10,65,'Madurai Warehouse'),
(11,40,'Chennai Warehouse'),
(12,35,'Chennai Warehouse'),
(13,25,'Madurai Warehouse'),
(14,30,'Madurai Warehouse'),
(15,20,'Madurai Warehouse'),
(16,120,'Chennai Warehouse'),
(17,110,'Chennai Warehouse'),
(18,90,'Chennai Warehouse'),
(19,50,'Bangalore Warehouse'),
(20,60,'Bangalore Warehouse'),
(21,40,'Hyderabad Warehouse'),
(22,75,'Chennai Warehouse'),
(23,90,'Chennai Warehouse'),
(24,150,'Chennai Warehouse'),
(25,45,'Coimbatore Warehouse'),
(26,35,'Coimbatore Warehouse'),
(27,40,'Chennai Warehouse'),
(28,55,'Chennai Warehouse'),
(29,18,'Bangalore Warehouse'),
(30,28,'Chennai Warehouse');

INSERT INTO addresses(user_id,full_name,phone,address_line1,address_line2,city,state,pincode,country,address_type)
VALUES 
(1,'Praveen Senthil','9876543210','12 Gandhi Street','Anna Nagar','Chennai','Tamil Nadu','600040','India','HOME'),
(2,'Arun Kumar','9876543211','45 Nehru Road','T Nagar','Chennai','Tamil Nadu','600017','India','HOME'),
(3,'Karthik Raj','9876543212','18 Cross Street','RS Puram','Coimbatore','Tamil Nadu','641002','India','HOME'),
(4,'Priya Sharma','9876543213','22 Lake View','Peelamedu','Coimbatore','Tamil Nadu','641004','India','HOME'),
(5,'Divya Rani','9876543214','8 MG Road','KK Nagar','Madurai','Tamil Nadu','625020','India','HOME'),
(6,'Rahul Verma','9876543215','90 Park Avenue','Adyar','Chennai','Tamil Nadu','600020','India','OFFICE'),
(7,'Sneha Iyer','9876543216','17 Temple Road','Velachery','Chennai','Tamil Nadu','600042','India','HOME'),
(8,'Vikram Singh','9876543217','55 North Street','Saibaba Colony','Coimbatore','Tamil Nadu','641011','India','HOME'),
(9,'Anitha Devi','9876543218','10 East Road','Anna Nagar','Madurai','Tamil Nadu','625002','India','HOME'),
(10,'Suresh Babu','9876543219','77 South Avenue','Tambaram','Chennai','Tamil Nadu','600045','India','HOME');

INSERT INTO cart(user_id)
VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO cart_items(cart_id,product_id,quantity)
VALUES (1,1,1),
(1,6,2),
(2,3,1),
(2,11,2),
(3,8,1),
(3,19,1),
(4,2,1),
(4,28,1),
(5,13,1),
(5,15,2),
(6,21,1),
(6,24,3),
(7,30,1),
(7,17,2),
(8,10,1),
(8,27,1),
(9,5,1),
(9,20,2),
(10,12,1),
(10,26,1);

INSERT INTO wishlist(user_id,product_id)
VALUES 
(1,3),
(1,19),
(2,1),
(2,28),
(3,2),
(3,15),
(4,11),
(4,25),
(5,30),
(5,6),
(6,8),
(6,18),
(7,14),
(7,20),
(8,4),
(8,22),
(9,16),
(9,24),
(10,5),
(10,29);

INSERT INTO orders(user_id,total_amount,order_status,payment_status)
VALUES 
(1,79999.00,'DELIVERED','PAID'),
(2,119999.00,'SHIPPED','PAID'),
(3,999.00,'DELIVERED','PAID'),
(4,599.00,'DELIVERED','PAID'),
(5,4999.00,'PENDING','PENDING'),
(6,2499.00,'CONFIRMED','PAID'),
(7,54999.00,'SHIPPED','PAID'),
(8,189.00,'DELIVERED','PAID'),
(9,2999.00,'DELIVERED','PAID'),
(10,3499.00,'CONFIRMED','PAID'),
(1,2499.00,'DELIVERED','PAID'),
(2,699.00,'DELIVERED','PAID'),
(3,78999.00,'SHIPPED','PAID'),
(4,1499.00,'CANCELLED','REFUNDED'),
(5,1999.00,'DELIVERED','PAID'),
(6,299.00,'DELIVERED','PAID'),
(7,450.00,'DELIVERED','PAID'),
(8,2499.00,'PENDING','PENDING'),
(9,3499.00,'CONFIRMED','PAID'),
(10,62999.00,'SHIPPED','PAID');

INSERT INTO order_items (order_id,product_id,quantity,unit_price,subtotal)
VALUES
(1,1,1,79999.00,79999.00),
(2,3,1,119999.00,119999.00),
(3,8,1,999.00,999.00),
(4,11,1,599.00,599.00),
(5,13,1,4999.00,4999.00),
(6,7,1,2499.00,2499.00),
(7,30,1,54999.00,54999.00),
(8,23,1,189.00,189.00),
(9,15,1,2999.00,2999.00),
(10,28,1,3499.00,3499.00),
(11,10,1,2499.00,2499.00),
(12,22,1,699.00,699.00),
(13,29,1,78999.00,78999.00),
(14,9,1,1499.00,1499.00),
(15,19,1,1999.00,1999.00),
(16,17,1,299.00,299.00),
(17,12,1,450.00,450.00),
(18,21,1,2499.00,2499.00),
(19,14,1,3499.00,3499.00),
(20,5,1,62999.00,62999.00);

INSERT INTO payments(order_id,payment_method,transaction_id,amount,payment_status)
VALUES
(1,'CARD','TXN10001',79999.00,'PAID'),
(2,'UPI_PAYMENT','TXN10002',119999.00,'PAID'),
(3,'COD',NULL,999.00,'PAID'),
(4,'NET_BANKING','TXN10004',599.00,'PAID'),
(5,'UPI_PAYMENT','TXN10005',4999.00,'PENDING'),
(6,'CARD','TXN10006',2499.00,'PAID'),
(7,'CARD','TXN10007',54999.00,'PAID'),
(8,'COD',NULL,189.00,'PAID'),
(9,'UPI_PAYMENT','TXN10009',2999.00,'PAID'),
(10,'CARD','TXN10010',3499.00,'PAID'),
(11,'UPI_PAYMENT','TXN10011',2499.00,'PAID'),
(12,'NET_BANKING','TXN10012',699.00,'PAID'),
(13,'CARD','TXN10013',78999.00,'PAID'),
(14,'UPI_PAYMENT','TXN10014',1499.00,'REFUNDED'),
(15,'COD',NULL,1999.00,'PAID'),
(16,'UPI_PAYMENT','TXN10016',299.00,'PAID'),
(17,'CARD','TXN10017',450.00,'PAID'),
(18,'NET_BANKING','TXN10018',2499.00,'PENDING'),
(19,'UPI_PAYMENT','TXN10019',3499.00,'PAID'),
(20,'CARD','TXN10020',62999.00,'PAID');

INSERT INTO shipping(order_id,courier_name,tracking_number,shipping_status,shipped_date,delivered_date)
VALUES
(1,'BlueDart','BD10001','DELIVERED','2026-06-10 09:30:00','2026-06-13 16:45:00'),
(2,'DTDC','DT10002','SHIPPED','2026-06-21 10:15:00','2026-06-24 14:20:00'),
(3,'Delhivery','DL10003','DELIVERED','2026-06-08 08:45:00','2026-06-11 13:10:00'),
(4,'BlueDart','BD10004','DELIVERED','2026-06-05 11:00:00','2026-06-08 15:40:00'),
(5,'DTDC','DT10005','PENDING','2026-06-26 09:00:00','2026-06-29 18:00:00'),
(6,'XpressBees','XB10006','SHIPPED','2026-06-22 10:30:00','2026-06-25 17:00:00'),
(7,'Delhivery','DL10007','SHIPPED','2026-06-23 09:45:00','2026-06-26 16:20:00'),
(8,'BlueDart','BD10008','DELIVERED','2026-06-01 08:30:00','2026-06-04 12:15:00'),
(9,'DTDC','DT10009','DELIVERED','2026-06-03 10:20:00','2026-06-06 15:50:00'),
(10,'Delhivery','DL10010','SHIPPED','2026-06-24 09:15:00','2026-06-27 13:45:00'),
(11,'BlueDart','BD10011','DELIVERED','2026-06-02 11:30:00','2026-06-05 17:10:00'),
(12,'DTDC','DT10012','DELIVERED','2026-06-06 09:50:00','2026-06-09 14:25:00'),
(13,'XpressBees','XB10013','SHIPPED','2026-06-20 10:40:00','2026-06-23 18:00:00'),
(14,'BlueDart','BD10014','PENDING','2026-06-27 08:55:00','2026-06-30 16:00:00'),
(15,'Delhivery','DL10015','DELIVERED','2026-06-04 10:10:00','2026-06-07 12:40:00'),
(16,'DTDC','DT10016','DELIVERED','2026-06-07 11:45:00','2026-06-10 16:30:00'),
(17,'BlueDart','BD10017','DELIVERED','2026-06-09 09:20:00','2026-06-12 15:15:00'),
(18,'XpressBees','XB10018','PENDING','2026-06-28 10:00:00','2026-07-01 17:30:00'),
(19,'DTDC','DT10019','SHIPPED','2026-06-25 08:40:00','2026-06-28 14:10:00'),
(20,'BlueDart','BD10020','SHIPPED','2026-06-26 09:35:00','2026-06-29 16:20:00');

INSERT INTO rating(user_id,product_id,review,review_text)
VALUES
(1,1,5,'Excellent phone, worth the price.'),
(2,3,5,'MacBook performance is outstanding.'),
(3,8,4,'Good quality T-shirt.'),
(4,11,5,'Very motivating book.'),
(5,13,4,'Mixer works perfectly.'),
(6,7,5,'Earbuds have amazing sound quality.'),
(7,30,5,'OnePlus is really fast.'),
(8,23,4,'Oil quality is good.'),
(9,15,5,'Induction stove heats quickly.'),
(10,28,4,'Smart watch battery backup is good.'),
(1,2,5,'Samsung display is excellent.'),
(2,4,4,'Laptop is value for money.'),
(3,9,5,'Kurti fabric is very soft.'),
(4,12,5,'Finance book is very useful.'),
(5,14,4,'Rice cooker is easy to use.'),
(6,16,5,'Face wash suits my skin.'),
(7,17,4,'Shampoo fragrance is nice.'),
(8,18,5,'Body lotion is moisturizing.'),
(9,19,5,'Cricket bat has great balance.'),
(10,20,4,'Football quality is good.'),
(1,21,5,'Racket is lightweight.'),
(2,22,4,'Rice quality is premium.'),
(3,24,5,'Sugar is clean and fresh.'),
(4,25,5,'Kids loved the teddy bear.'),
(5,26,4,'Remote car is fun to play with.');

INSERT INTO coupons(coupon_code,discount_percentage,valid_from,valid_to,minimum_order_amount,status)
VALUES
('WELCOME10',10.00,'2026-01-01','2026-12-31',500.00,'ACTIVE'),
('SAVE20',20.00,'2026-01-01','2026-12-31',1000.00,'ACTIVE'),
('NEWUSER15',15.00,'2026-01-01','2026-12-31',750.00,'ACTIVE'),
('FESTIVE30',30.00,'2026-10-01','2026-11-30',2000.00,'ACTIVE'),
('OLD50',50.00,'2025-01-01','2025-12-31',3000.00,'EXPIRED');

INSERT INTO returns(order_id,product_id,reason,return_status,request_date)
VALUES
(5,13,'Product damaged during delivery.','APPROVED','2026-08-21'),
(8,23,'Wrong item received.','COMPLETED','2026-08-16'),
(14,9,'Size mismatch.','COMPLETED','2026-08-31'),
(18,21,'Product not required.','REQUESTED','2026-08-12'),
(20,5,'Laptop screen issue.','APPROVED','2026-08-23');

INSERT INTO rating(product_id,user_id,review,review_text)
VALUES
(1,1,5,'Excellent phone, worth the price.'),
(3,2,5,'MacBook performance is outstanding.'),
(8,3,4,'Good quality T-shirt.'),
(11,4,5,'Very motivating book.'),
(13,5,4,'Mixer works perfectly.'),
(7,6,5,'Earbuds have amazing sound quality.'),
(30,7,5,'OnePlus is really fast.'),
(23,8,4,'Oil quality is good.'),
(15,9,5,'Induction stove heats quickly.'),
(28,10,4,'Smart watch battery backup is good.'),
(2,1,5,'Samsung display is excellent.'),
(4,2,4,'Laptop is value for money.'),
(9,3,5,'Kurti fabric is very soft.'),
(12,4,5,'Finance book is very useful.'),
(14,5,4,'Rice cooker is easy to use.'),
(16,6,5,'Face wash suits my skin.'),
(17,7,4,'Shampoo fragrance is nice.'),
(18,8,5,'Body lotion is moisturizing.'),
(19,9,5,'Cricket bat has great balance.'),
(20,10,4,'Football quality is good.'),
(21,1,5,'Racket is lightweight.'),
(22,2,4,'Rice quality is premium.'),
(24,3,5,'Sugar is clean and fresh.'),
(25,4,5,'Kids loved the teddy bear.'),
(26,5,4,'Remote car is fun to play with.');
