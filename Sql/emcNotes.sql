select * from student ;

alter table student add column Grade varchar(10);

alter table student rename column grade to Finalgrade;

insert into student(ID,Name,Age,FinalGrade)values
(101,"john doe",20,"a"),
(102,"jane smith",22,"b"),
(103,"bob johnson",19,"c"),
(104,"Alice Brown",21,"a"),
(105,"Charlie davis",20,"b"),
(106,"Emma Wilson",23,"a"),
(107,"Michal Lee",20,"c"),
(108,"Olivia moore",19,"b"),
(109,"William Turner",21,"a"),
(110,"Sophia",22,"c");


update student set age = 21 where id=101;

delete from student where id=101;

select * from student having age>=19;

select * from student where name = "William turner" or name  = "Alice Brown";

select * from student where name in("William turner" , "Alice Brown");

select * from student where finalgrade="a" or finalgrade="b" and age>20; 

select count(name) from student ;

select avg(age) from student ;

select sum(age) from student where FinalGrade = "a" or Finalgrade = "b";

select Finalgrade,count(name) from student group by FinalGrade ;

select Finalgrade,avg(age) from student group by FinalGrade ;

select finalgrade,count(finalgrade) from student group by Finalgrade  order by finalgrade desc limit 1;

select  avg(age),finalgrade from student group by finalgrade having avg(age) > 21;

select count(name),finalgrade from student group by finalgrade having count(name)> 3;

select avg(age),finalgrade from student group by finalgrade having avg(age) between 20 and 21