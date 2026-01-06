sql==>structured query language
It is used to perform the CRUD operation on DB(database).
CRUD--Create Read Update Delete

DataBase-->storing your data
             SQL
CRUD ---------------------------->DataBase
    DBMS(DataBaseManagementSystem)
  
using sql CRUD opeartion is done on DB with the help of DBMS.

DB:
1.Relational DB --->Table based 
Tables
keys-->used to establish the relation between tables
  
2.Non relational DB---->mongo DB,Firebase,NoSQL,JSON,graph

SQL used in the follow:
MySQL
MS SQL Server
Oracle
PostegraceSQL

oracleapex.login for free

open sql workbench:
show databases; #to confirm whether it is working

show databases;
create database pandian_stores; #create database
use pandian_stores;
drop database pandian_stores; #drop database
alter database read only = 1  #we can't alter the database
alter database read only = 0  #we can alter the database

create table and datatypes:
create table employees (
		emp_id int,
    emp_name varchar(50),
    salary decimal(7,2),
    join_date date
);

6/1/26

select query and where:
======================	
select * from employees;         #select all the column

select emp_name,salary from employees;  #only select emp_name,salary

select emp_name as name, salary as coolie from employees; #we can give alias name as well

select salary,emp_id from employees;    #can change the order of column

select * from employees where emp_id=2;  #we can give the condition, display column which met the condition


update and delete query:
======================
set sql_safe_updates = 0;

update employees
set join_date =  "2025-07-12"
where emp_id = 4;

update employees
set join_date = "2025-09-07",
	phone_number = "9835627101"
where emp_id = 5;

update employees
set phone_number = null
where emp_name = "Jhon";

delete from employees;       ##it will delete the all the things


roll back:
=========
to off the auto commit:
set autocommit = 0;

update employees
set salary = 50000;

rollback;	
	
commit;  ####once we run the commit then we can;t rollback

delete from employees;

select * from employees;


constraints:
===========

unique
not null
check
default









	





