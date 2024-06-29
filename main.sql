-- QUESTION ONE \/\/\/\/ :)

-- "List the employee number, last name, first name, sex, and salary of each employee."

-- create view AnalysisQ1 as
-- select employees.employee_number, employees.last_name, employees.first_name, employees.sex, salary.salary
-- from employees
-- join salary on employees.employee_number = salary.employee_number;

-- QUESTION TWO \/\/\/\/ :)

-- "List the first name, last name, and hire date for the employees who were hired in 1986."

-- create view analysisq2 as
-- select first_name, last_name, hire_date
-- from employees
-- where extract(year from cast(hire_date as date)) = 1986;

-- QUESTION THREE \/\/\/\/ :)

-- "List the manager of each department along with their department number, department name, employee number, last name, and first name."

-- create view analysisq3 as
-- select departments.dept_number, departments.dept_name, employees.employee_number, employees.last_name, employees.first_name
-- from departments
-- join dept_manager on departments.dept_number = dept_manager.dept_number
-- join employees on dept_manager.employee_number = employees.employee_number;

-- QUESTION FOUR \/\/\/\/

-- "List the department number for each employee along with that employee’s employee number, last name, first name, and department name."

-- create view analysisq4 as
-- select departments.dept_number, employees.employee_number, employees.last_name, employees.first_name, departments.dept_name
-- from employees
-- join dept_employees on employees.employee_number = dept_employees.employee_number
-- join departments on dept_employees.dept_number = departments.dept_number;


-- QUESTION FIVE \/\/\/\/ --

--"List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B."

-- create view analysisq5 as
-- select first_name, last_name, sex
-- from employees
-- where first_name = 'Hercules'
-- and last_name like 'B%';

-- QUESTION 6 \/\/\/\/ --

--"List each employee in the Sales department, including their employee number, last name, and first name."

-- create view analysisq6 as
-- select employees.employee_number, employees.last_name, employees.first_name
-- from employees
-- inner join dept_employees on employees.employee_number = dept_employees.employee_number
-- inner join departments on dept_employees.dept_number = departments.dept_number
-- where dept_name = 'Sales';

-- QUESTION 7 \/\/\/\/

--"List each employee in the Sales and Development departments, including their employee number, last name, 
--first name, and department name."

-- select employees.employee_number, employees.last_name, employees.first_name, departments.dept_name
-- from employees
-- inner join dept_employees on employees.employee_number = dept_employees.employee_number
-- inner join departments on dept_employees.dept_number = departments.dept_number
-- where dept_name = 'Sales'
-- 	or dept_name = 'Development';

-- create view analysisq7 as
-- select employees.employee_number, employees.last_name, employees.first_name, departments.dept_name
-- from employees
-- inner join dept_employees on employees.employee_number = dept_employees.employee_number
-- inner join departments on dept_employees.dept_number = departments.dept_number
-- where dept_name in ('Sales', 'Development');

-- QUESTION 8 \/\/\/\/

--"List the frequency counts, in descending order,
--of all the employee last names (that is, how many employees share each last name)."

create view analysisq8 as
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;