create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null
);

create table dept_emp (
	emp_no int,
	dept_no varchar(30) not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
);

create table dept_manager (
	dept_no varchar(30) not null,
	emp_no integer not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
);

create table employees (
	emp_no integer not null,
	birth_date varchar(30) not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(30) not null,
	hire_date varchar(30) not null
);

create table salaries (
	emp_no integer not null,
	salary integer not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
);

create table titles (
	emp_no integer not null,
	title varchar(30) not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
);