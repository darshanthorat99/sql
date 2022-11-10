create table Dept(
deptid int primary key identity(1,1),
deptname varchar(10)
)

create table emp(
Id int primary key identity (1,1),
ename  varchar(30) not null,
city varchar(10) not null,
salary decimal,
deptid int,
constraint FK_emp_dept foreign key(deptid) references dept(deptid)
)

insert into dept values('HR')
insert into dept values('Devlopment')
insert into dept values('Testing')
insert into dept values('social')

insert into emp values('darshan','pune',500000,2)

insert into emp values('darshan','pune',500000,1)
insert into emp values('vishal','dhrli',700000,4)
insert into emp values('tejan','chakan',545000,3)
insert into emp values('muna','spine',670000,1)
insert into emp values('akshay','alaindi',350000,2)
insert into emp values('mayur','nAGPUR',340000,3)
insert into emp values('bhatt','JAMNAGAR',130000,1)
insert into emp values('sanju','MUMBAI',800000,2)


SELECT* FROM emp
alter table emp add managerid int
update emp set managerid =1 where id in(2,3)
update emp set managerid =6 where id in(4,2)
update emp set managerid =8 where id in(7,9,10)
update emp set deptid= null where id =10
update emp set managerid= null where id =1



select   e.*,d.*  from emp e
inner join dept d on d.deptid=e.deptid

select   e.ename,e.city,e.deptid,d.deptname  from emp e
inner join dept d on d.deptid=e.deptid


select   e.*,d.deptname  from emp e
left join dept d on d.deptid=e.deptid


select   e.*,d.deptname  from emp e
right join dept d on d.deptid=e.deptid


select   e.*,d.deptname  from emp e
full join dept d on d.deptid=e.deptid

select e.ename as EmployeeName, m.ename as Managername
from emp e, emp m
where m.id=e.managerid

select* from dept cross join emp

select * from emp where salary=
(select max(salary) from emp)


-- display emp details whose salary is > avg salary of all emps

select * from emp where salary>
(select avg(salary) from emp)

-- display the emp who is taking higher salary than empid =5

select * from emp where salary>
(select salary from emp where id=5)
-- display emp who have salary > avg salary of sales dept
select * from emp where salary>(
select avg(salary)from emp where deptid=
(
select deptid from dept where deptname in('Devlopment')
)
)
-- display emp who salary > avg salary of each dept


