CREATE TABLE Employee(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(20),
Salary INT,
City VARCHAR(30)
);
INSERT INTO Employee VALUES
(101,'Ravi','IT',50000,'Chennai'),
(102,'Meena','HR',45000,'Bangalore'),
(103,'Arun','IT',60000,NULL),
(104,'Kavya','Finance',55000,'Chennai'),
(105,'John','HR',40000,'Coimbatore');
select *from employee;
select Name,Salary from employee;
select * from employee where salary>50000;
select *from employee where Department="IT";
select*from employee where City="Chennai";
select *from employee where salary>=40000 and salary<=60000;
select Name from employee where Name Like 'A%';
select distinct Department from employee;
select *from employee where city=null;
select sum(salary) as total_salary from employee;
select avg(salary) as avg_it from employee where Department="IT";
select Department,count(*) as total_employees from employee  group by Department;
select * from employee where salary>(select avg(salary) from employee);
insert into employee values (106, 'Anita', 'IT', 52000, 'Chennai');
update employee set salary=48000 where empid=105;