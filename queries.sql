/* Data Analysis
List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). */

select e.emp_no, last_name, first_name, sex, salary
from public."Empolyees" e
join public."Salaries" s on e.emp_no = s.emp_no

select last_name, first_name, hire_date
from public."Empolyees" e
where DATE_PART('Year', hire_date) = 1986

select d.dept_no, dept_name, e.emp_no, first_name, last_name
from public."Empolyees" e 
join public."Dept_mangement" dm on e.emp_no = dm.emp_no
left join public."Departments " d on d.dept_no = dm.dept_no

select d.dept_no, dept_name, e.emp_no, first_name, last_name
from public."Empolyees" e 
join public."Dept_emp" dm on e.emp_no = dm.emp_no
left join public."Departments " d on d.dept_no = dm.dept_no

select first_name, last_name, sex
from public."Empolyees" e
where first_name like 'Hercules' 
and last_name like 'B%'

select e.emp_no, last_name, first_name
from public."Empolyees" e 
join public."Dept_emp" de
on de.emp_no = e.emp_no
join public."Departments" d on d.dept_no = d.dept_no
where d.dept_name like 'Sales'

select e.emp_no, last_name, first_name
from public."Empolyees" e 
join public."Dept_emp" de
on de.emp_no = e.emp_no
join public."Departments " d on d.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development')

select count(*), last_name
from public."Empolyees" e
group by last_name