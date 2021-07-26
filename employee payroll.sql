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

#Uc8
alter table employee_payroll add phone varchar(15) ,add address varchar(20) default 'address1',add department varchar(20) not null;
UPDATE employee_payroll 
SET 
    department = 'sales'
WHERE
    name IN ('Sakshi' , 'Stuti');
SELECT 
    *
FROM
    employee_payroll;

#Uc9
alter table employee_payroll 
add basic_pay int, 
add deductions int,
add taxable_pay int  ,
add tax int,
add net_pay int;

#Uc10

DELETE FROM employee_payroll 
WHERE
    id IN (1 , 2, 3, 4, 5, 6);

insert into employee_payroll (name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Marketing','F',3000000,1000000,2000000,500000,1500000,'2021-07-08',90000);
    
insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Sales','F',3000000,
    0,0,0,0,'2021-06-01',89999);






    
