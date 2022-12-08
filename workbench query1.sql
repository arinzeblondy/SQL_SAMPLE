show databases;

use sql_intro;

show tables;

create table employees (emp_id int primary key, emp_name varchar(25),
Age int, Gender char(1), Doj date, Dept varchar (20), City varchar(15), salary float);

describe employees;

insert into employees values
(101,"Jimmy",35,"M","2005-05-30","Sales","Chicago",70000),
(102,"Shane",30,"M","1999-06-25","Marketing","Seattle",55000),
(103,"Marry",28,"F","2009-03-10","Product","Boston",62000),
(104,"Dwanye",37,"M","2011-07-12","Tech","Austin",57000),
(105,"Sara",32,"F","2017-10-27","Sales","New York",72000),
(106,"Ammy",35,"F","2014-12-20","IT","Seattle",80000),
(107,"Jack",40,"M","2012-07-14","Finance","Houston",100000),
 (108,"Angela",36,"F","2007-02-04","Tech","New York", 110000),
(109,"Marcus",25,"M","2010-07-18","HR","Boston",90000),
(110,"David",34,"M","2009-08-25","Product","Miami",75000),
(111,"Rose",28,"F","2013-09-21","HR","Houston",65000),
(113,"Amelia",30,"F","2018-10-15","Finance","Austin",55000),
(114,"Robert",40,"M","2015-12-18","Sales","Detroit",95000),
(115,"William",36,"M","2016-04-20","IT","Chicago",83000),
(116,"John",32,"M","2004-08-09","Marketing","Miami",67000),
(117,"Bella",29,"F","2002-06-11","Tech","Detroit",72000),
(118,"Maya",25,"F","2018-10-15","IT","Houston",48000),
(119,"Alice",37,"F","2019-05-28","Product","Seattle",48000),
(120,"Joseph",45,"M","2016-11-23","Sales","Chicago",115000);

select * from employees;

select distinct city  from employees;

select distinct dept  from employees;

select avg(age) from employees;

#average age in each department

select dept, avg(age) from employees group by dept;

select dept, sum(salary) as total_salary from employees
group by dept;

select count(emp_id),city from employees 
group by city
order by count(emp_id) desc;

select year(doj) as year, count(emp_id)
from employees
group by year(doj);

create table sales (product_id int, sell_price float, quantity int, state varchar(20))

insert into sales values
(121, 320.0, 3, "California"),
(121, 320.0, 6,"Texas"),
(121, 320.0, 4,"Alaska"),
(123, 290.0, 2,"Texas"),
(123, 290.00, 7,"California"),
(123, 290.00, 4,"Washington"),
(121, 320.0, 7,"Ohio"),
(121, 320.0, 2,"Arizona"),
(123, 290.00, 8,"Colorado");

select * from sales;

select product_id, sum(sell_price * quantity) as revenue 
from sales group by product_id;

create table c_product(product_id int, cost_price float);

insert into c_product values(121,270.0),(123,250.0);

select c.product_id, sum((s.sell_price - c.cost_price) * s.quantity) as profit from 
sales as s inner join c_product as c
where s.product_id=c.product_id
group by product_id;

select * from employees;

select dept, avg(salary) as avg_salary from employees
group by dept
having avg(salary)>75000;

select city, sum(salary) as Total from employees
group by city
having sum(salary)>200000;

select dept, count(*) as emp_count
from employees
group by dept
having count(*)>2;

select city, count(*) as emp_count
from employees
where city !="Houstin"
group by city
having count(*)>2;

select dept, count(*) as emp_count
from employees
group by  dept
having avg(salary)>75000;