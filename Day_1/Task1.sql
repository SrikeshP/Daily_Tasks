create database students;
use  students;
create table student(
s_id int primary key,
s_name varchar(50),
s_age tinyint
);

insert into student values (1,"Ram",21);
insert into student values (2, "Shamam", 21);

select* from student;



