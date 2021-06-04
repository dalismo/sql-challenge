select * from "Departments";

select * from "Dept_Emp";

select * from "Dept_Manager";

select * from "Employees";

select * from "Salaries";

select * from "Titles";

--List the following details of each employee: employee number, last name, first name, sex, and salary.
select "Employees".emp_no, last_name, first_name, sex, salary
from "Employees"
left join "Salaries" on "Employees".emp_no = "Salaries".emp_no
;

