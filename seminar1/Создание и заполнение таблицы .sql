--Создание таблицы

CREATE TABLE `sakila`.`1` (
  `id_product` INT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `product_count` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NULL,
  PRIMARY KEY (`id_product`));

--Заполнение таблицы

INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('1', 'Iphone', 'Apple', '5', '10000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('2', 'Watch', 'samsung', '6', '20000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('3', 'Iphone', 'Apple', '7', '30000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('4', 'Watch', 'saomi', '2', '5000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('5', 'Iphone', 'Apple', '5', '50000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('6', 'Camera', 'samsung', '4', '30000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('7', 'phone', 'saomi', '3', '20000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('8', 'Camera', 'samsung', '5', '20000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('9', 'headphones', 'samsung', '1', '10000');
INSERT INTO `sakila`.`1` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('10', 'headphones', 'saomi', '3', '30000');
