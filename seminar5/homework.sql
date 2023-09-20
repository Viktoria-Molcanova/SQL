--Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]

--Вывод всех пользователей, которые не отправляли сообщения.

CREATE OR REPLACE VIEW massage AS
SELECT DISTINCT CONCAT(firstname, ' ', lastname, ' (id: ', (id), ')') AS 'Не отправляют сообщения'
FROM users
WHERE NOT EXISTS (
	SELECT from_user_id
	FROM messages
	WHERE users.id = messages.from_user_id
);

-- 2.	Выведите данные, используя написанное представление [SELECT]

SELECT * FROM massage;

-- 3.	Удалите представление [DROP VIEW]

DROP VIEW massage;



