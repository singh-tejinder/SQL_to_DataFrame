
--- Ctrl + Enter 



create table first(
user_id varchar2(10),
user_name varchar2(30),
user_phone varchar2(15)
);

insert into first(user_id, user_name, user_phone)
values('I001','Steven', '+123456');
insert into first(user_id, user_name, user_phone)
values('I002','Suresh', '+234567');
insert into first(user_id, user_name, user_phone)
values('I003','Chris', '+333333');
insert into first(user_id, user_name, user_phone)
values('I004','Harry', '+444444');
insert into first(user_id, user_name, user_phone)
values('I006','Suresh', '+555555');

commit;


select * from first;

select * from first where rownum<=3;

select user_id, user_phone from first;


alter table first
add user_age integer;

select * from first;

update first
set user_age=25
where user_name='Suresh';

update first
set user_age=32
where user_name='Steven';

update first
set user_age=35
where user_name='Chris';

commit;

update first
set user_age=null
where user_name='Harry';

commit;

select * from first;


update first
set user_age='32'
where user_age is null;

commit;


select user_id, user_name, user_age from first
where user_name='Suresh';

select user_id, user_name, user_age
from first
order by user_name desc;

drop table second;

create table second(
user_id varchar2(10),
user_Dept varchar2(10),
user_location varchar2(15)
);


insert into second(user_id, user_Dept, user_location)
values('I001','IT','Ontario');

insert into second(user_id, user_Dept, user_location)
values('I002','Marketing','Ontario');


insert into second(user_id, user_Dept, user_location)
values('I005','Finance','Nova Scotia');
commit;




select * from first;

select * from second;


-- Inner Join 
select *
from first f 
inner join second s  on f.user_id=s.user_id;



-- Left Join 
select *
from first f 
left join second s on f.user_id=s.user_id;



-- Right Join 
select *
from first f 
right join second s on f.user_id=s.user_id;



-- Left Join excluding common records
select *
from first f 
left join second s on f.user_id=s.user_id
where s.user_id is null;


-- Right Join excluding common records
select *
from first f 
right join second s on f.user_id=s.user_id
where f.user_id is null;


-- Full Join 
select *
from first f 
full join second s on f.user_id=s.user_id;




