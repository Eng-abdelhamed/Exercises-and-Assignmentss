use NEW_PRODUCT;
--------------------------------------------------------------------------Assignment2 ---------------------------------------------------------------------
--Write a SQL query to retrieve the emp_id, last_name, and salary of employees whose salary is between 2,000 and 5,000 and do not have a manager ID of 101 or 200.
select 
E.employee_id , E.last_name , E.salary,E.manager_id
from employees E
Where E.salary between 2000 and 5000 and E.manager_id Not in (101,200) ;

-- Write a SQL query to display the employee names along with their respective department names. Use aliases for table names for better readability.
select
e.first_name ,
e.last_name,
d.department_name AS DepartmentName
from employees e
inner join
departments d
on
e.department_id = d.department_id 
ORDER BY
d.department_name ;
-------------------------------
--Write a SQL query to find the number of employees and the average salary for each department. Ensure that the results are grouped by department ID.
select
Count(employees.employee_id) as Employees , 
departments.department_name ,
avg(employees.salary) as Avergae_Salary 
from 
employees
inner join
departments 
on 
departments.department_id = employees.department_id
group  by departments.department_name;

