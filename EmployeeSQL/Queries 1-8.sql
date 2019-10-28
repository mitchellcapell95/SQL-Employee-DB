-- #1: Join employees with salaries

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
into emp_salaries
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

select * from emp_salaries

-- #2: Employees that were hired in 1986

SELECT first_name, last_name, hire_date
into hired_1986_2
FROM employees
WHERE hire_date LIKE ('1986%')

select * from hired_1986_2

-- #3: List the manager of each department with the following information: department number, 
-- 		department name, the manager's employee number, last name, first name, and start and end employment dates.

select dept_manager.dept_no,departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name,dept_manager.from_date, dept_manager.to_date
into manager_masterdata
from dept_manager
left join employees
on dept_manager.emp_no = employees.emp_no
left join departments
on dept_manager.dept_no = departments.dept_no;

select * from manager_masterdata

  
-- #4: List the department of each employee with the following information: employee number, last name, 
--		first name, and department name.

select employees.emp_no,employees.last_name, employees.first_name,dept_emp.dept_no,departments.dept_name
into master_empdata
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no;

select * from master_empdata

-- #5:List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
into HerculesB
from employees
where first_name = 'Hercules' and last_name like 'B%';

select * from HerculesB

-- #6: List all employees in the Sales department, including their employee number, 
--      last name, first name, and department name.

select employees.emp_no,employees.last_name, employees.first_name,dept_emp.dept_no,departments.dept_name
into employee_data_1_2_4
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no;

select emp_no,last_name,first_name,dept_name
into sales_dept
from employee_data_1_2_4
where dept_name = 'Sales'

select * from sales_dept

-- #7: List all employees in the Sales department, including their employee number, 
--      last name, first name, and department name.

select emp_no,last_name,first_name,dept_name
into sales_dev_dept
from employee_data_1_2_4
where dept_name = 'Sales' or dept_name = 'Development'

select * from sales_dev_dept

-- #8: In descending order, list the frequency count of employee last names, i.e., 
--      how many employees share each last name.

select last_name,count(last_name)
into last_namecount
from employees
group by last_name
order by last_name desc;

select * from last_namecount

