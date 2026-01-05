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








