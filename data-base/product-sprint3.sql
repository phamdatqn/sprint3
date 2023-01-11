create database if not exists product_sprint3;

use product_sprint3;

create table if not exists user(
	username varchar(30) primary key,
    password varchar(200),
    is_delete bit default 0
);

create table  if not exists role(
	id int primary key auto_increment,
    name varchar(30),
    is_delete bit default 0
);

create table if not exists user_role(
	username varchar(50),
    role_id int,
    is_delete bit default 0,
    foreign key(username) references user(username),
    foreign key(role_id) references role(id),
    primary key(username, role_id)
);

create table if not exists customer(
	id int primary key auto_increment,
	name varchar(30),
	day_of_birth varchar(30),
	gender int,
	id_card varchar(12),
	email varchar(100),
	address varchar(200),
	phone_number varchar(15),
	username varchar(30) unique,
    is_delete bit default 0,
	foreign key (username) references user(username)
);

create table if not exists product_type(
	id int primary key auto_increment,
	name varchar(30),
	is_delete bit default 0
    );

create table if not exists size(
	id int primary key auto_increment,
	name varchar(30),
	is_delete bit default 0
    );
    
create table if not exists product(
	id int primary key auto_increment,
	name varchar(100),
    price int,
    discount int,
    manufacturer varchar(50),
    `describe` varchar(255),
    image text,
    product_type_id int,
	is_delete bit default 0,
    foreign key (product_type_id) references product_type(id)
    );
    
create table if not exists product_size(
	id int primary key auto_increment,
	size_id int,
	product_id int,
    quantity int,
	is_delete bit default 0,
	foreign key (size_id) references size(id),
	foreign key (product_id) references product(id)
    );
    
create table if not exists order_detail(
	id int primary key auto_increment,
    quantity int,
    day_payment datetime,
    customer_id int,
    product_size_id int,
    is_delete bit default 0,
    is_pay bit default 0,
	foreign key (customer_id) references customer(id),
    foreign key (product_size_id) references product_size(id)
    );

    
    
