# sql-challenge
## Overview
This project involves designing, creating, and populating an employee database for Pewlett Hackard, and then performing data analysis to answer specific questions about the employees.

## Project Structure
The project is divided into three main parts:
1. **Data Modeling**: Creating an Entity Relationship Diagram (ERD) based on the CSV files.
2. **Data Engineering**: Creating SQL table schemas, setting up the database, and importing the data from CSV files.
3. **Data Analysis**: Writing SQL queries to answer various questions about the data.

## Data Modeling
The CSV files provided are:
- `departments.csv`
- `dept_emp.csv`
- `dept_manager.csv`
- `employees.csv`
- `salaries.csv`
- `titles.csv`

Using these files, an ERD was created to visualize the database schema and the relationships between tables.

## Data Engineering
### Table Schemas
The following table schemas were created based on the CSV files:
- `departments`: Contains department information.
- `dept_emp`: Records the departments in which employees work.
- `dept_manager`: Records the managers of each department.
- `employees`: Contains employee information.
- `salaries`: Records the salaries of employees.
- `titles`: Contains the job titles of employees.


## Data Analysis
The `queries.sql` script contains SQL queries to answer the following questions:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names.
