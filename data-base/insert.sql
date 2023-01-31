-- add Roles
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('1', 0, 'ROLE_ADMIN');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('2', 0, 'ROLE_EMPLOYEE');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('3', 0, 'ROLE_CUSTOMER');

insert into user (username, password, is_delete) values ('admin', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('customer', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('phamdat.qn', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('hatien.qn', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('employee', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('phucha', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('thienha', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (username, password, is_delete) values ('ludanh', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);

-- add user_role
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '1',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '2',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('admin', '3',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('employee', '2',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('employee', '3',0);
INSERT INTO `user_role` (`username`, `role_id`,is_delete) VALUES ('phamdat.qn', '3',0);

INSERT INTO `customer` (`name`, `day_of_birth`,gender,id_card,email,address,phone_number,username,is_delete) 
VALUES ('customer', '1993-05-27',1,'1234566789','customer@gmail.com','Bình Sơn, Quảng Ngãi','0971111111','customer',0),
('Đạt Phạm', '1993-05-27',1,'2123267434','phamdat.qn@gmail.com','Đại Lộc, Quảng Nam','0971111112','phamdat.qn',0),
('Hạ Tiên', '1993-05-27',1,'212356363451','hatien.qn@gmail.com','Đại Lộc, Quảng Nam','0971111113','hatien.qn',0);

INSERT INTO `product_type` (`name`,is_delete) 
VALUES ('Áo khoác',0),
('Áo sơ mi',0),
('Áo thun',0);

INSERT INTO `size` (`name`,is_delete) 
VALUES ('M',0),
('L',0),
('XL',0),
('XXL',0);

INSERT INTO `product_detail` (`name`,price,discount,manufacturer,`describe`,image,product_type_id,is_delete) 
VALUES 
('Gucci Reversible Web Jacket',47820000,0,'Gucci','70% Cotton, 30% Polyamide','https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/2db26e9e5468c661f13bd644613e450e.webp',1,0),
('Brunello Cucinelli',84052000,0,'Gucci','90% Virgin Wool, 10% Cashmere','https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/1acbf0bda283b7fa59e0b7376478ac5a.webp',1,0),
('Versace Button-Up Hooded Jacket',27805000,0,'Versace','80% Cotton, 20% Polyamide','https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/f30b4cae27dbcae69d8e0e9ec7e7348a.webp',1,0),
('Gucci Jumbo GG Puffer Gilet',42805000,0,'Gucci','70% Cotton, 30% Polyamide','https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/75bc70b45e024ae7002d1c814aec9d00.webp',1,0),

('Áo Sơ Mi Versace Jeans Couture 72GAL2B0',4400000,0,'Versace','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/05/ao-so-mi-versace-72gal2b0-ns057-mau-vang-trang-627e1cf3df559-13052022155515.jpg',2,0),
('Áo Sơ Mi Dài Tay Dsquared2 Sleeve Shirt',5500000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/05/ao-so-mi-dai-tay-dsquared2-sleeve-shirt-s74dm0514-s36275-mau-trang-6286052719fb8-19052022155151.jpg',2,0),
('Áo Sơ Mi Nam Cộc Tay Versace Jean Couture',5500000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/08/ao-so-mi-nam-coc-tay-versace-jean-couture-72gal2bc-cn002-003-mau-trang-size-s-6303220349406-22082022132819.jpg',2,0),
('Áo Sơ Mi Burberry Short-sleeve Check Stretch Cotton Shirt Camel',8200000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2019/07/ao-so-mi-burberry-short-sleeve-check-stretch-cotton-shirt-camel-5d1d6f147c2aa-04072019101428.jpg',2,0),
('Áo Sơ Mi Gucci King Snake Logo 433550 Z309E 9000 Màu Trắng',11300000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/11/ao-so-mi-gucci-king-snake-logo-433550-z309e-9000-mau-trang-63749e709eda2-16112022152520.jpg',2,0),

('Áo Polo Versace Jeans Couture Garland 72GAGT06 Czarny Regular Fit ',5500000,0,'Versace','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/06/ao-polo-versace-jeans-couture-garland-72gagt06-czarny-regular-fit-mau-trang-62ba8010ec2b2-28062022111408.jpg',3,0),
('Áo Polo Versace Jeans Couture Baroque Collar Shirt ',4900000,0,'Versace','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-versace-jeans-couture-baroque-collar-shirt-mau-trang-620f794296ecd-18022022174730.jpg',3,0),
('Áo Polo Gucci Men Bee And Star-Embroidered Cotton Polo Shirt',9200000,0,'Gucci','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-men-bee-and-star-embroidered-cotton-polo-shirt-mau-trang-620e1470762c7-17022022162504.jpg',3,0),
('Áo Polo Gucci White Ss2020 Web',8190000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-gucci-white-ss2020-web-mau-trang-620e14a042a37-17022022162552.jpg',3,0),
('Áo Polo Dolce & Gabbana Men is Black Crown-Embroidered Cotton-piqué Polo Shirt',5300000,0,'Dsquared2','70% Cotton, 30% Polyamide','https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/02/ao-polo-dolce-gabbana-men-s-black-crown-embroidered-cotton-pique-polo-shirt-size-44-6212ec19edcca-21022022083417.jpg',3,0)
;

INSERT INTO `product` (product_id,size_id,is_delete,quantity) 
VALUES 
(1,1,0,100),
(1,2,0,100),
(1,3,0,100),
(1,4,0,100),

(2,1,0,100),
(2,2,0,100),
(2,3,0,100),
(2,4,0,100),

(3,1,0,100),
(3,2,0,100),
(3,3,0,100),
(3,4,0,100),

(4,1,0,100),
(4,2,0,100),
(4,3,0,100),
(4,4,0,100),

(5,1,0,100),
(5,2,0,100),
(5,3,0,100),
(5,4,0,100),

(6,1,0,100),
(6,2,0,100),
(6,3,0,100),
(6,4,0,100),

(7,1,0,100),
(7,2,0,100),
(7,3,0,100),
(7,4,0,100),

(8,1,0,100),
(8,2,0,100),
(8,3,0,100),
(8,4,0,100),

(9,1,0,100),
(9,2,0,100),
(9,3,0,100),
(9,4,0,100),

(10,1,0,100),
(10,2,0,100),
(10,3,0,100),
(10,4,0,100),

(11,1,0,100),
(11,2,0,100),
(11,3,0,100),
(11,4,0,100),

(12,1,0,100),
(12,2,0,100),
(12,3,0,100),
(12,4,0,100),

(13,1,0,100),
(13,2,0,100),
(13,3,0,100),
(13,4,0,100),

(14,1,0,100),
(14,2,0,100),
(14,3,0,100),
(14,4,0,100)
;

INSERT INTO `order_detail`(quantity,day_payment,customer_id,product_id,is_pay,is_delete) 
VALUES 
(1,'2022-12-05',1,1,0,0),
(2,'2022-12-03',2,2,0,0),
(3,'2022-12-01',3,1,0,0),
(4,'2022-11-05',1,3,0,0);



-- select product.id as id, product.name as name, product.price as price, 
--             product.discount as discount,product.manufacturer as manufacturer, product.describe as `describe`,
--             product.image as image, product_type.name as productType, sum(product_size.quantity) as sumQuantity 
--             from product 
--             join product_size on product.id = product_size.product_id
--             join product_type on product.product_type_id = product_type.id 
--             where product.name like '%'  and product.is_delete = 0 
--             group by product.id having sum(product_size.quantity) > 0;