create table practice.employee_info(
id VARCHAR (10) not NULL, 
name VARCHAR(100) not NULL, 
email VARCHAR(30) not NULL, 
department VARCHAR(40) not NULL
);



insert into practice.employee_info (id, name, email, department)
values


('E001', 'Jessie', 'jessie23@gmail.com', 'Development'),
('E002', 'Praveen', 'praveen_dagger@yahoo.com', 'HR'),
('E003', 'Bisa', 'dragonBall@gmail.com', 'Sales'),
('E004', 'Rithvik', 'msvv@hotmail.com', 'IT'),
('E005', 'Suraj', 'srjsunny@gmail.com', 'Quality Assurance'),
('E006', 'Om', 'OmShukla@yahoo.com', 'IT'),
('E007', 'Naruto', 'uzumaki@konoha.com', 'Development');

Select * from practice.employee_info;
--To delete proerties in the table
delete from practice.employee_info where name = 'Rithvik';
delete from practice.employee_info where department = 'Development';
delete from practice.employee_info;
--to retrieve the information deleted
start transaction;
delete from practice.employee_info where department = 'Development';
rollback;


CREATE TABLE practice.student (
  id INT PRIMARY key not null,
  name VARCHAR(50)not null,
  age INT not null,
  email VARCHAR(50) not null,
  phone VARCHAR(20) not null 
);
insert into practice.student(id, name, age, email, phone) 
VALUES   
(1, 'Amit', 20, 'amit@gmail.com', '9999999999'),
(2, 'Rahul', 22, 'rahul@yahoo.com', '8888888888'),
(3, 'Priya', 21, 'priya@hotmail.com', '7777777777'),
(4, 'Sonia', 23, 'sonia@gmail.com', '6666666666'),
(5, 'Kiran', 19, 'kiran@yahoo.com', '5555555555');

Select * from practice.student;
--rename a column
 alter table  practice.student rename column name to first_name;

--rename a table not running
alter table practice.student rename to practice.student_details;

--adding a column in a table
alter table practice.student
add marks INT;







