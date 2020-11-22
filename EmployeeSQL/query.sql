
--1.
SELECT employee.emp_no, employee.first_name, employee.last_name, employee.sex, salaries.salary
FROM salaries
INNER JOIN employee ON
employee.emp_no=salaries.emp_no;

--2.
select first_name, last_name, hire_date 
from employee
where hire_date like '%1986%';


--3. 
select departments.dept_no, departments.dept_name, managers.emp_no, employee.first_name, employee.last_name
from managers
join departments on departments.dept_no=managers.dept_no
join employee on managers.emp_no=employee.emp_no; 


--4. 
select employee.emp_no, employee.first_name, employee.last_name, departments.dept_name
from employees_dept
join employee on employee.emp_no=employees_dept.emp_no
join departments on employees_dept.dept_no=departments.dept_no;



--5.
select first_name, last_name, sex 
from employee
where first_name = 'Hercules' and last_name like 'B%';

--6.
select employees_dept.emp_no,  employee.last_name, employee.first_name, departments.dept_name
from employees_dept
join departments on employees_dept.dept_no=departments.dept_no
join employee on employees_dept.emp_no=employee.emp_no
where departments.dept_name = 'Sales';

--7.
select employees_dept.emp_no,  employee.last_name, employee.first_name, departments.dept_name
from employees_dept
join departments on employees_dept.dept_no=departments.dept_no
join employee on employees_dept.emp_no=employee.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'

--8. 
select last_name, count(last_name) as "Frequency Counts"
from employee
group by last_name
order by "Frequency Counts" DESC

-- Bonus
select * from employee
where emp_no = 499942

