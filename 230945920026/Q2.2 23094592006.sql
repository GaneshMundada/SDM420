drop procedure if exists checkUser;
delimiter $
create procedure checkUser(emailid varchar(40))
BEGIN
	declare check_email bool;
	select true into check_email from login where email=emailid;
	if check_email then
		select username,password from login where email=emailid;
	ELSE
		insert into log(curr_date, curr_time, message)
		values(CURRENT_DATE,CURRENT_TIME,"Wrong email id Please try again!!");
		select * from log where id=(SELECT max(id) from log);
	end if;
end $
delimiter ;
