create database college;
use college;

create table student13(
id int primary key,
name varchar(20)
);

insert into student13 values(1,'adam'),(2,'bob'),(3,'toddler');

create table course1(
id int primary key,
course varchar(50)
);

insert into course1 values(1,'VLSI'),(2,'RM'),(3,'MA');

update course1
set id=5
where id=3;

select * from student13;
select * from course1;
drop table student13;
truncate table student13;

select * from student13
inner join course1
on student13.id=course1.id;

select * from student13 as s
left join course1 as c
on s.id=c.id;

select * from student13
right join course1
on student13.id=course1.id;

select * from student13 as s
left join course as c
on s.id=c.id
union
select * from student13
right join course
on student13.id=course.id;