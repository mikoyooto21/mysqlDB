create table customerS
(
	id int auto_increment primary key,
    firstName varchar(30) not null,
	lastName varchar(30) not null,
    accSum decimal
);
create table employees
(
	id int auto_increment primary key,
    firstName varchar(30) not null,
    lastName varchar(30) not null
);
insert into customerS(firstName, lastName, accSum)
values
('Tom', 'Smith', 2000),
('Sam', 'Brown', 3500),
('Mark', 'Adams', 2500),
('Paul', 'Ins', 4200),
('John', 'Smith', 2800),
('Tim', 'Cook', 2800);
insert into employees(firstName, lastName)
values
('Homer', 'Simpson'),
('Tom', 'Smith'),
('Mark', 'Adams'),
('Nick', 'Svensson');

select firstName, lastName
from customerS
union select firstName, lastName from employees
order by firstName desc;

select firstName, lastName
from customerS
union all select firstName, lastName from employees
order by firstName desc;

#при сумме меньше 3к - добавляется 10%. при сумме от 3к - 30%
select firstName, lastName, accSum + accSum * 0.1 as totalSum
from customerS where accSum < 3000
union select firstName, lastName, accSum + accSum * 0.3 as totalSum
from customerS where accSum >=3000;