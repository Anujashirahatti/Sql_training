CREATE DATABASE college;
use college;

create table student12(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student12(rollno,name,marks,grade,city)
values
(101,"anu",98 , "A","gadag"),
(201,"palli",97, "A","mysore"),
(301,"palli",96 , "A","mysore"),
(401,"keerti",95 , "A","mysore");

select * from student12;

alter table student1
drop column grade;

select max(marks)
from student12
where marks > 95;

select count(name), city
from student12
group by city
having max(marks) > 95;

select * from student12 where city="gadag";
select * from student12 where marks between 95 and 97;
select * from student12 where city in ('gadag','mysore');
select * from student12 where city not in ('gadag','mysore');
create database college;
use college;

create table student12(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student12(rollno,name,marks,grade,city)
values
(101,"anu",98 , "A","gadag"),
(201,"palli",97, "A","mysore"),
(301,"palli",96 , "A","mysore"),
(401,"keerti",95 , "A","mysore");

select * from student12;

alter table student1
drop column grade;

select max(marks)
from student12
where marks > 95;

select count(name), city
from student12
group by city
having max(marks) > 95;

select * from student12 where city="gadag";
select * from student12 where marks between 95 and 97;
select * from student12 where city in ('gadag','mysore');
select * from student12 where city not in ('gadag','mysore');