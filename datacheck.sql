select * from "Departments";

select * from "Dept_Emp";

select * from "Dept_Manager";

select * from "Employees";

select * from "Salaries";

select * from "Titles";

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select "Employees".emp_no, last_name, first_name, sex, salary
from "Employees"
left join "Salaries" on "Employees".emp_no = "Salaries".emp_no
;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from "Employees"
where hire_date between '1986-01-01' and '1987-01-01'
;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select "Departments".dept_no, "Departments".dept_name, "Employees".emp_no, "Employees".last_name, "Employees".first_name
from "Departments"
inner join "Dept_Manager" on "Dept_Manager".dept_no = "Departments".dept_no
inner join "Employees" on "Employees".emp_no = "Dept_Manager".emp_no
;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
from "Employees"
join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no



