USE amazon_clone_db;

CREATE table users(
user_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) unique not null,
phone varchar(10) unique,
password varchar(225) not null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp 
		   on update current_timestamp,
status enum('ACTIVE','INACTIVE') default 'active'
);

DESC users;

CREATE TABLE sellers (
    seller_id INT PRIMARY KEY AUTO_INCREMENT,
    seller_name VARCHAR(100) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    gst_number VARCHAR(20) UNIQUE NOT NULL,
    address TEXT NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    status ENUM('ACTIVE', 'INACTIVE') DEFAULT 'ACTIVE'
);

CREATE TABLE categories(
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100) UNIQUE NOT NULL,
description TEXT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
			ON UPDATE CURRENT_TIMESTAMP,
STATUS ENUM ('ACTIVE','INACTIVE') DEFAULT 'ACTIVE'
);

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
seller_id INT NOT NULL,
CONSTRAINT fk_seller
FOREIGN KEY(seller_id) references sellers(seller_id),
category_id INT NOT NULL,
CONSTRAINT fk_category
FOREIGN KEY (category_id) REFERENCES categories(category_id),
product_name VARCHAR(150) NOT NULL,
description TEXT NULL,
brand VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON
			UPDATE CURRENT_TIMESTAMP,
status ENUM ('AVAILABLE','OUT_OF_STOCK','DISCONTINUED') DEFAULT 'AVAILABLE'
);

CREATE TABLE  inventory(
inventory_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT NOT NULL,
CONSTRAINT fk_products
FOREIGN KEY(product_id) REFERENCES products(product_id),
quantity INT NOT NULL,
warehouse_location VARCHAR(100) NOT NULL,
last_updated TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON
			 UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE addresses(
address_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
CONSTRAINT fk_user
FOREIGN KEY (user_id) REFERENCES users(user_id),
full_name VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
address_line1 VARCHAR(255) NOT NULL,
address_line2 VARCHAR(255) NOT NULL,
city VARCHAR(100) NOT NULL,
state VARCHAR(100) NOT NULL,
pincode VARCHAR(10) NOT NULL,
country VARCHAR(100) NOT NULL DEFAULT 'India',
address_type ENUM('HOME','OFFICE') DEFAULT 'HOME',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cart(
cart_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
CONSTRAINT fk_cart
FOREIGN KEY (user_id) REFERENCES users(user_id),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON
			UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE cart_items(
cart_item_id INT PRIMARY KEY AUTO_INCREMENT,
cart_id INT NOT NULL,
CONSTRAINT fk_cart_itmes_cart
FOREIGN KEY (cart_id) REFERENCES cart(cart_id),
product_id INT NOT NULL,
CONSTRAINT fk_cart_items_product
FOREIGN KEY (product_id) REFERENCES products(product_id),
quantity INT  NOT NULL DEFAULT 1 ,
added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE wishlist(
wishlist_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
CONSTRAINT fk_wishlist_user
FOREIGN KEY (user_id) REFERENCES users(user_id),
product_id INT NOT NULL,
CONSTRAINT fk_wishlist_product
FOREIGN KEY (product_id) REFERENCES products(product_id),
added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
CONSTRAINT fk_order_user_id
FOREIGN KEY (user_id) REFERENCES users(user_id),
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount DECIMAL(10,2) NOT NULL,
order_status ENUM('PENDING','CONFIRMED','SHIPPED','DELIVERED','CANCELLED') DEFAULT 'PENDING',
payment_status ENUM('PENDING','PAID','FAILED','REFUNDED') DEFAULT 'PENDING'
);

CREATE TABLE order_items(
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
CONSTRAINT fk_order_items_order_id
FOREIGN KEY (order_id) REFERENCES orders(order_id),
quantity INT NOT NULL DEFAULT 1,
unit_price DECIMAL(10,2) NOT NULL,
subtotal DECIMAL(10,2) NOT NULL
);
ALTER TABLE order_items
ADD COLUMN product_id INT NOT NULL,
ADD CONSTRAINT fk_order_items_product_id
FOREIGN KEY (product_id) REFERENCES products(product_id);

CREATE TABLE payments(
payment_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
CONSTRAINT fk_payment_orderid
FOREIGN KEY (order_id) REFERENCES orders(order_id),
payment_method ENUM('COD','NET_BANKING','UPI_PAYMENT','CARD'),
transaction_id VARCHAR(100) UNIQUE,
amount DECIMAL(10,2) NOT NULL,
payment_status ENUM ('PAID','PENDING','REFUNDED','FAILED'),
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE shipping(
shipping_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
CONSTRAINT fk_shipping_order_id
FOREIGN KEY (order_id) REFERENCES orders(order_id),
courier_name VARCHAR(100) NOT NULL,
tracking_number VARCHAR(100) NOT NULL UNIQUE,
shipping_status Enum('PENDING','SHIPPED','OUT_FOR_DELIVERY','DELIVERED') DEFAULT 'SHIPPED',
shipped_date TIMESTAMP NULL,
delivered_date TIMESTAMP NULL
);

CREATE TABLE rating(
review_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT NOT NULL,
CONSTRAINT fk_rating_product_id
FOREIGN KEY (product_id) REFERENCES products(product_id),
user_id INT NOT NULL,
CONSTRAINT fk_rating_user_id
FOREIGN KEY (user_id) REFERENCES users (user_id),
review INT NOT NULL CHECK (review BETWEEN 1 AND 5),
review_text text,
review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coupons(
coupon_id INT PRIMARY KEY AUTO_INCREMENT,
coupon_code VARCHAR(100) UNIQUE NOT NULL,
discount_percentage DECIMAL(5,2) NOT NULL 
    CHECK (discount_percentage BETWEEN 0 AND 100),
valid_from DATE NOT NULL,
valid_to DATE NOT NULL,
minimum_order_amount DECIMAL(10,2),
status ENUM('ACTIVE','EXPIRED') DEFAULT 'ACTIVE'
);

CREATE TABLE returns(
return_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
CONSTRAINT fk_returns_order_id
FOREIGN KEY (order_id) REFERENCES orders(order_id),
product_id INT NOT NULL,
CONSTRAINT fk_returns_product_id
FOREIGN KEY (product_id) REFERENCES products(product_id),
reason TEXT NOT NULL,
return_status ENUM('REQUESTED','APPROVED','REJECTED','COMPLETED') DEFAULT 'REQUESTED',
request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC products;

