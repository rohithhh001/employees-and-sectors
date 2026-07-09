-- Q1 show all employees_detais----
SELECT * FROM departments.employees;

-- Q2 what is the salary of kiran rao and arjun patel-------
select Employee_Name,Salary
from employees
where Employee_Name='kiran rao' or Employee_Name ='arjun patel';

                 -- or ---
                 
select employee_name,salary
from employees
where employee_name in ( 'kiran rao','arjun patel');

-- Q3 what are the highest avg salary departments  ? ---
select avg(employees.Salary) as highest_avg_salary, sectors.Department_Name
from employees
join sectors 
on employees.Department_ID= sectors.Department_ID
group by sectors.Department_Name;

-- Q4 which department has highest avg salary and who are the employees in that department ? ---
select employees.Employee_Name,employees.Salary,sectors.Department_Name
from employees
join sectors
on employees.Department_ID=sectors.Department_ID
where employees.Department_ID=(
                             select Department_ID
                             from employees
                             group by Department_ID
                             order by avg(Salary)
                             limit 1
                             );
                             
                             
-- Q5 which employees has highest salary in their department and what is the location of that employee ?----
select salary as highest_salary,department_name,addres,Employee_Name
from employees
inner join sectors
on employees.Department_ID= sectors.Department_ID
where (employees.Department_ID,Salary)in(
                              select Department_ID, max(Salary)
                              from employees
                              group by Department_ID
                              );
                              
                              
							