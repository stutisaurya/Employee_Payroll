#Uc1
create database payroll_service;
show databases;
use payroll_service;

#Uc2
create table employee_payroll(
	id int unsigned not null auto_increment,
    name varchar(150) not null,
    salary double not null,
    start date not null,
    primary key (id)
);

select * from employee_payroll;

drop table employee_payroll;

#Uc3
insert into employee_payroll (name,salary,start) values
	('Stuti',10000.0, '2021-01-03'),
	('Sakshi',30000.0, '2021-01-03');

#Uc4
select * from employee_payroll;

#Uc5
select * from employee_payroll where name='stuti';
select * from employee_payroll where start between cast ('2021-01-03' As date)
and Date(now());

#Uc6
Alter table employee_payroll add gender char(1) after name;
#Alter table employee_payroll add phoneNo  varchar(20);

update employee_payroll set gender ='F'
where name ='Stuti' or name='Sakshi';

#Uc7
select salary from employee_payroll;
select sum(salary) from employee_payroll;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll;
select avg(salary) from employee_payroll;

select sum(salary) from employee_payroll where 
	gender ='F' group by gender;







    
