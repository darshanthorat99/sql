create table person
(
Id int,
Fullname varchar(25)
)
alter table person add City varchar(20)
alter table person alter column City varchar(30)
alter table person drop column City
sp_rename 'person.NAME','Name'