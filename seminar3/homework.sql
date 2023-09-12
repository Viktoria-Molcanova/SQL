USE vk
  -- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
  
SELECT DISTINCT firstname
FROM `vk`.`users`
ORDER BY firstname ASC;

 -- Выведите количество мужчин старше 35 лет [COUNT].

SELECT COUNT(*) 'Количество мужчин старше 35 лет'
FROM `vk`.`profiles` 
WHERE gender = 'm' 
AND TIMESTAMPDIFF(YEAR, birthday, NOW()) > '35';

-- Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]

SELECT status, COUNT(*) 'Количество заявок в друзья'
FROM `vk`.`friend_requests` 
GROUP BY status;


