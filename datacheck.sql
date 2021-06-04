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
where hire_date between '1986-01-01' and '1987-01-01';

