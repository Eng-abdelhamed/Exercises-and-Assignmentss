--Write a SQL query to retrieve all columns from a table named employees.
select * from employees;

select * from locations;
--------------------------------------------------------------------
--Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the
--employees table, where the location is 'Cairo'
select 
loc.city , e.employee_id , e.first_name ,e.last_name
from locations loc , employees e
where loc.city = ' Cairo';


--Write a SQL query that displays distinct dept_id values from the employees table.
select distinct dept.department_id from departments dept;

-------------------------------------------------------------
--Write a SQL query to create a table students with the following columns: ID (Primary Key), First_Name (not null), Last_Name (default 'Unknown'),Address (default 'N/A'), City (default 'N/A'), and Birth_Date.
create table Student(
ID int not null ,
First_name varchar(255) not null ,
Last_name varchar(255) DEFAULT 'UnKnown',
Stu_ADDress varchar(255) DEFAULT 'N/A',
City varchar(255) default 'N/A',
primary key(ID),
Birth_date Date
);

--Write a SQL query to drop the students table
drop table Student;
-----------------------------------------------------------------------------

insert into student(ID ,First_name , Last_name ,Stu_address,City,birth_date)
values(1,'Abdelhamed','Ahmed','NacrCity','Cairo','2002-9-9');


update student
set stu_address = 'Garden City' 
where Last_name = 'Ahmed';

select *from student;

---------------------------------------------------
BEGIN TRANSACTION;
DELETE FROM student
WHERE City = 'Cairo';

SELECT * FROM student;

ROLLBACK TRANSACTION;

SELECT * FROM student;
-------------------------------------------------

