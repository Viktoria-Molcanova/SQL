USE vk;

-- Написать скрипт, добавляющий в созданную БД vk 2-3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей) (CREATE TABLE)

DROP TABLE IF EXISTS comment;
CREATE TABLE comment (
    id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),

    FOREIGN KEY (user_id) REFERENCES users(id)
) COMMENT 'комментарий к файлу media ';

DROP TABLE IF EXISTS comment_to_media;
CREATE TABLE comment_to_media (
    id SERIAL,
    media_id BIGINT UNSIGNED NOT NULL,
    comment_id BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (comment_id) REFERENCES comment(id)
) COMMENT 'связь media и comment';

-- Заполнить 2 таблицы БД vk данными (по 10 записей в каждой таблице) (INSERT)

INSERT INTO `users` 
VALUES ('1','Молчанова','Виктория','molcn@rambler.ru','1','89134445566'),
    ('2','Моторина','Ольга','motor@rambler.ru','2','89134445567'),
    ('3','Иванова','Вера','ivanova@rambler.ru','3','89134445568'),
    ('4','Сидорова','Мария','sidor@rambler.ru','4','89134445569'),
    ('5','Петров','Иван','petrov@rambler.ru','5','89134446666'),
    ('6','Пупкин','Кирилл','pupkin@rambler.ru','6','89134488566'),
    ('7','Коржеманов','Владимир','korsh@rambler.ruu','7','89134735566'),
    ('8','Терёшкина','Елена','teresh@rambler.ru','8','89134115566'),
    ('9','Калугин','Артём','kalug@rambler.ru','9','89134445426'),
    ('10','Сугораков','Александр','rakov@rambler.ru','10','89130045560');

INSERT INTO `profiles` 
VALUES ('1','Ж','2000-01-11',NULL,NOW(),'Красноярск'),
    ('2','Ж','1999-02-12',NULL,NOW(),'Сочи'),
    ('3','Ж','2001-03-13',NULL,NOW(),'Омск'),
    ('4','Ж','2007-04-14',NULL,NOW(),'Москва'),
    ('5','М','2014-05-15',NULL,NOW(),'Киев'),
    ('6','М','2005-06-16',NULL,NOW(),'Красноярск'),
    ('7','М','2004-07-27',NULL,NOW(),'Иркутск'),
    ('8','Ж','2010-08-01',NULL,NOW(),'Владивосток'),
    ('9','М','2013-09-05',NULL,NOW(),'Тула'),
    ('10','М','2019-10-07',NULL,NOW(),'Калуга');
