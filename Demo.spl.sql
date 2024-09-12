create database company;
use company;
create table employees(
employeeId int auto_increment primary key,
employeeName varchar(50) not null,
age int not null,
address varchar(100),
salary decimal(10,2),
phone varchar(15) unique,
departmentId int not null
);
create table departments (
departmentId int auto_increment primary key,
departmentName varchar(50) not null
);

insert into departments (departmentName) 
values ('HR'), ('IT'), ('Finance');
insert into employees (employeeName, age, address, salary, phone, departmentId)
values
("Phương nam", 30, "113 Ninh tốn",1500.00,"0906990230", 1),
("Minh quang", 20, "13 Hải phòng",2700.00,"0905287493", 2);

update employees
set salary = 2800.00
where employeeId = 2;

alter table employees
add column gender varchar(5) not null default"Nam";

select * from employees;

alter table employees
modify salary int;

delete from employees
where employeeId = 1;


