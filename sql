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

1.create table products (
	p_id int,
    p_name varchar(30) unique,
    price decimal (6,2)
);

2) alter table products
   add constraint unique (p_name);
=========================
	not null:::

1)create table products (
	p_id int,
    p_name varchar(30) not null,
    price decimal (6,2)
);

2) alter table products
   modify p_name varchar(30) not null;

=========================
	check:

create table products (
	p_id int,
    p_name varchar(30),
    price decimal (6,2)
    constraint check_price check(price<100)  ##constarint constraintname check(condition)
);


alter table products
drop constraint check_price;

alter table products
add constraint check_price check(price<200);
====================
default:::

1)  create table products(
	p_id int,
    p_name varchar(30),
    price decimal(6,2) default 10
    );	

2) alter table products
   alter price set default 15;

	
primary keys and auto increment:
===============================	
primary key should be,
	1.unique
	2.not null
	
Error Code: 1062. Duplicate entry '1' for key 'transactions.PRIMARY'
if you give same id for two things it will raise an error.

insert into transactions(amount)
values(250.60);   #Error Code: 1364. Field 't_id' doesn't have a default value

auto increment:
==============
create table transactions(
	t_id int primary key auto_increment,
    amount decimal(6,2)
	);

insert into transactions(amount)
values (500.20);

insert into transactions(amount)
values(460.20);


alter table transactions
add constraint primary key (t_id);

alter table transactions
modify t_id int auto_increment;

alter table transactions
auto_increment = 200;


foreign keys:
============
primary key of one table is used to establish the connection with another table is called foreign key.
Used to establish the connection between two individual tables

foreign must not unique or not null,

create table customers(
	c_id int primary key auto_increment,
    c_name varchar(30),
    c_age int
);


create table transactions(
	t_id int primary key auto_increment,
    amount decimal (6,2),
    customer_id int,             #foreign key of transactions table
    foreign key(customer_id) references customers(c_id)              #syntax to define the foreign key root table
);

alter table transactions 
drop foreign key transactions_ibfk_1;

alter table transactions 
add constraint fk_c_id
foreign key(customer_id) references customers(c_id);

delete from customers
where c_id =1;

joins::
=======
inner join
right join
left join

select * from transactions inner join customers
on transactions.customer_id = customers.c_id;

select t_id, amount, c_name from transactions inner join customers
on transactions.customer_id = customers.c_id;

select * from transactions left join customers
on transactions.customer_id = customers.c_id;

select * from transactions right join customers
on transactions.customer_id = customers.c_id;


09/01/26
functions:
=========

describe employees;  #describe displays the details about table

select count(e_name) from employees;

select count(e_name) as count from employees
where age>25;

select max(salary) as Highsalary from employees
where age<25;

select min(age) as Youngest from employees;

select sum(salary) as total from employees;

select avg(age) as Age from employees;

select concat(e_name,"-",e_id) as username from employees;


logical operators:
==================
select * from employees
where age=40 and salary<150000;

select * from employees
where age>30 or salary >150000;

select * from employees
where not age=40;

select * from employees
where age between 25 and 50;

select * from employees
where salary in (50000,150000);

wildcard characters;  (%,_)
===================
select * from employees
where e_name like "R%";            #starting from R

select * from employees
where join_date like "%23";        #ending with 23      

select * from employees
where join_date like "____-01-13";     #for unkown we can use _ 

select * from employees
where join_date like "____-01-%";   #we can use both operators combine

order by,limit:
==============
select * from employees
order by e_name;          #by default it is in ascending

select * from employees
order by e_name desc;    #it is for descending

select * from employees
order by join_date desc, e_name desc;  #if two members are in same salary then we can give another column to sort

select * from employees
limit 1;                  #it will display the 1st row in table

select * from employees
order by salary desc
limit 3;                  #will display the top 3 row in table

select * from employees
order by salary desc
limit 2,2;                 #this is offset 
-- offset(excluded),limit(display)





















