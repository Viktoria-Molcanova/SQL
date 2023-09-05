--2 SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество //которых превышает 2

SELECT manufacturer, product_name, price
FROM sakila.1
WHERE product_count > 2;

--3 Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
SELECT *
FROM sakila.1
WHERE manufacturer = 'Samsung';

--4 Товары, в которых есть упоминание "Iphone"
SELECT *
FROM sakila.1
WHERE product_name LIKE '%Iphone%';

--5 Товары, в которых есть упоминание "Samsung"

SELECT *
FROM sakila.1
WHERE manufacturer LIKE '%Samsung%';

--5  Товары, в названии которых есть ЦИФРЫ

SELECT *
FROM sakila.1
WHERE product_name LIKE '%[0-9]%';

--6  Товары, в названии которых есть ЦИФРА "8"

SELECT *
FROM sakila.1
WHERE product_name LIKE '%8%';
