show databases;

use sql_intro;

create table emp_details (Name varchar (25),Age int, Sex char(1),
doj date, city varchar(15),salary float);

#using describe function to see the structure of the table


describe emp_details;

insert into emp_details
values("jimmy", 35, "M", "1999-05-30", "chicago", 70000),
("shane", 30, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("sara", 32, "F", "2017-10-27", "NewYork", 72000),
("Ammy", 35, "F", "2014-12-20", "Seatttle", 8000);

#using the select statement to display the records

select * from emp_details;

#to check the unique city names that are present in our table

select distinct city from emp_details;

#using the count function to count the number of employees 

select count(name) from emp_details;

#to get the total sum of salaries 

select sum(salary) from emp_details;

#to get the average salary


select avg(salary) from emp_details;

#selecting a specific column from the table

select name,age,city from emp_details;

#using where clause to check for employees with age >30

select * from emp_details where age>30;

#using where clause to check for employees that are obly female

select name,sex,city from emp_details where sex="F";

#using the or operator to determine employees who are from chicago & Austin

select * from emp_details where 
city= "Chicago" or city= "Austin";

select * from emp_details where 
city in ("Chicago","Austin");

 select * from emp_details where
 doj between "2000-01-01" and "2010-12-31";
 
 select * from emp_details where
 age>30 and sex="M";
 
  select * from emp_details order by salary;
  
  
  select * from emp_details order by salary desc;
  
  
  select (10+20) as addition;
  
  
   select (10-20) as subtraction;
   
   select length("india") as total_len;
   
   
   
   select repeat ("@",10);
   
   
   select upper("india");
   
   
   select curdate();
   
   select day(curdate());
   
   select now();
   
   #string functions
   
   select upper("india") as upper_case;
   
   
   
  
  