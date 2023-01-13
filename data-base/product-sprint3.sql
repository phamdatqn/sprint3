create
database if not exists product_sprint3;

use
product_sprint3;

CREATE TABLE IF NOT EXISTS user (
    username VARCHAR(30) PRIMARY KEY,
    password VARCHAR(200),
    is_delete BIT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    is_delete BIT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS user_role (
    username VARCHAR(50),
    role_id INT,
    is_delete BIT DEFAULT 0,
    FOREIGN KEY (username)
        REFERENCES user (username),
    FOREIGN KEY (role_id)
        REFERENCES role (id),
    PRIMARY KEY (username , role_id)
);

CREATE TABLE IF NOT EXISTS customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    day_of_birth VARCHAR(30),
    gender INT,
    id_card VARCHAR(12),
    email VARCHAR(100),
    address VARCHAR(200),
    phone_number VARCHAR(15),
    username VARCHAR(30) UNIQUE,
    is_delete BIT DEFAULT 0,
    FOREIGN KEY (username)
        REFERENCES user (username)
);

CREATE TABLE IF NOT EXISTS product_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    is_delete BIT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS size (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    is_delete BIT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS product_detail(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price INT,
    discount INT,
    manufacturer VARCHAR(50),
    `describe` VARCHAR(255),
    image TEXT,
    product_type_id int,
    is_delete BIT DEFAULT 0,
    foreign key(product_type_id) references product_type(id)
    
);

CREATE TABLE IF NOT EXISTS product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    size_id INT,
    product_id INT,
    quantity INT,
        product_detail_id int,
    is_delete BIT DEFAULT 0,
    FOREIGN KEY (size_id)REFERENCES size (id),
    	foreign key (product_detail_id) references product_detail(id)
);

CREATE TABLE IF NOT EXISTS order_detail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT,
    day_payment DATETIME,
    customer_id INT,
    product_id INT,
    is_delete BIT DEFAULT 0,
    is_pay BIT DEFAULT 0,
    FOREIGN KEY (customer_id)REFERENCES customer (id),
    FOREIGN KEY (product_id)REFERENCES product (id)

);

    
    
