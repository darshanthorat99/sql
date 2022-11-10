alter table person add age int
update person  set age=40 where personid=1
update person  set age=23 where personid=2
update person  set age=25 where personid=3
update person  set age=23 where personid=4
update person  set age=25 where personid=5
update person  set age=32 where personid=6
update person  set age=32 where personid=7
update person  set age=33 where personid=8
update person  set age=22 where personid=9
update person  set age=23 where personid=10
update person  set age=17 where personid=11
update person  set age=25 where personid=12




select* from person
select  name from person
select name, age from person
select * from person where age=23
select * from person where age>23
select * from person where age=23

select * from Person where age between 20 and 30
select * from Person where city in('pune','jamnagar')
select * from Person where age not in (23,25,40)
select distinct city from Person


select * from person where name like 'd%'
select *  from Person where  name not like 'm%'
select * from person where name like '%n'
select * from person where name like '%a%'
select * from person where name not like '%o%'
select * from Person where name like 'm___'
select * from person where name like '____n'
select * from person where name like '[tm]%'
select *from person where name like '%[un]%' 

select * from Person where name like '[a-d]%'
select * from Person where name not like '[a-d]%'
 

select * from person where city='chakan' and age=23
select *from person where city ='chakan' and age>=23
select * from person where city= 'pune'or city='chennai'
select * from Person where city is null
select * from Person where city is not null


select * from person
order by age
select * from person 
order by age desc


select * from person where city='pune'
order by age

select count(personid) as totalcount from Person
select count (age) as agecount from Person
select count(*) as TotalCount from Person 
select COUNT(distinct city) as totalCity from Person

select sum(age)  as totalage from person
select max(age) as maxage from person
select min(age) as minage from person
select avg(age) as avgage from person
select max(age) as maxAge from Person where city='chakan'
select * from person
select city,count(personid) as total from person
group by city

select city from person              
group by city
select age from person
group by age


select city,count(personid) as total from person
group by city
having count(personid)>1

select city,count(personid) as total from person
group by city
having avg(age)>30


      

select city,count(personid) as total from person
group by city
having city in('pune','chakan')








