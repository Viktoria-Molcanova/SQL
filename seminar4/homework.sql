use vk;

--Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.

SELECT id, firstname, lastname, COUNT(*) AS count_communities
FROM users
JOIN users_communities ON users.id = users_communities.user_id
GROUP BY id,firstname,lastname
ORDER BY count_communities DESC;

--Подсчитать количество пользователей в каждом сообществе.

SELECT COUNT(*), communities.name
FROM users_communities 
JOIN communities ON users_communities.community_id = communities.id
GROUP BY communities.id

--Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

SELECT u.id, u.firstname, u.lastname
FROM `vk`.`messages` m
INNER JOIN `vk`.`users` u ON u.id=m.from_user_id
WHERE m.to_user_id = '1'
GROUP BY m.from_user_id
ORDER BY m.from_user_id DESC 
LIMIT 1;
