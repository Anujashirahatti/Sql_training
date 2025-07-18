create database college;
use college;

create table student13(
id int primary key,
name varchar(20)
);

insert into student13 values(1,'adam'),(2,'bob'),(3,'toddler');

create table course(
id int primary key,
course varchar(50)
);

insert into course values(1,'VLSI'),(2,'RM'),(3,'MA');

select * from student13;
select * from course;
drop table student13;
truncate table student13;