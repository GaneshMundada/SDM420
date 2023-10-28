drop procedure if exists addUser;
delimiter $
create PROCEDURE addUser(username varchar(20), password varchar(20), email varchar(50))
BEGIN
	insert into login VALUES(username,password,email);
end $
delimiter ;
