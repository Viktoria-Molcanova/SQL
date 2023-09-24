--Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk. Пользователь задается по id. Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. Функция должна возвращать номер пользователя.
use vk;
SET SQL_SAFE_UPDATES = 0;
SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION IF EXISTS User_del;

DELIMITER //

CREATE FUNCTION User_del (user_id_del INT)
RETURNS INT
BEGIN
	DELETE 
    FROM `vk`.`messages` m
    WHERE m.to_user_id = user_id_del 
        OR m.from_user_id = user_id_del;
        
    DELETE 
    FROM `vk`.`likes` l
    WHERE l.user_id = user_id_del;
    
    DELETE 
    FROM `vk`.`users_communities` uc
    WHERE uc.user_id = user_id_del;
  
    DELETE 
    FROM `vk`.`profiles` p
    WHERE p.user_id = user_id_del;
    
    DELETE 
    FROM `vk`.`friend_requests` fr
    WHERE fr.initiator_user_id = user_id_del 
        OR fr.target_user_id = user_id_del;

    DELETE 
    FROM `vk`.`media` m
    WHERE m.user_id = user_id_del;
    
    DELETE 
    FROM `vk`.`users` u
    WHERE u.id = user_id_del;
    
    RETURN user_id_del;

END; // 

DELIMITER ;
SELECT User_del(1) AS user_id_del;

--Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.

use vk;

SET GLOBAL log_bin_trust_function_creators = 1;

DROP PROCEDURE IF EXISTS Del_User;

DELIMITER //

CREATE PROCEDURE Del_User (user_id_del INT)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
SELECT 'An error has occurred, operation rollbacked and the stored procedure was terminated';
    
BEGIN
ROLLBACK;
END;

START TRANSACTION;
    
	DELETE 
        FROM `vk`.`messages` m
	WHERE m.to_user_id = user_id_del 
        OR m.from_user_id = user_id_del;
            
	DELETE 
        FROM `vk`.`likes` l
	WHERE l.user_id = user_id_del;
    
	DELETE 
        FROM `vk`.`users_communities` uc
	WHERE uc.user_id = user_id_del;
    
	DELETE 
        FROM `vk`.`profiles` p
	WHERE p.user_id = user_id_del;
    
	DELETE 
        FROM `vk`.`friend_requests` fr
	WHERE fr.initiator_user_id = user_id_del 
        OR fr.target_user_id = user_id_del;
    
	DELETE 
	FROM `vk`.`media` m
	WHERE m.user_id = user_id_del;
        
	DELETE 
        FROM `vk`.`users` u
	WHERE u.id = user_id_del;
         
	COMMIT;

END; // 

DELIMITER ;

CALL Del_User(2);


