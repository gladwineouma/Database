drop trashion.trader_details;
create table trashion.employee_salary(
employee_id VARCHAR (5) not null,
name VARCHAR (100) not null,
gender VARCHAR (20) not null,
bank VARCHAR (30) not null,
salary VARCHAR (20) not NULL
);
 insert into trashion.employee_salary( employee_id, name, gender, bank, salary)
 values
 ('EM001', 'Judy', 'f', 'KCB', '100,000'),
 ('EM002', 'Julius', 'male', 'DTD', '150,000')
 ('EM003', 'Julio', 'male', 'Barclays', '50,000'),
 ('EM004', 'Hope', 'f', 'Equity', '80,000'),
 ('EM005', 'Winnie', 'f', 'COOP', '200,000');

select * from trashion.employee_salary;
select name,
case 
	when gender = 'f' then 'female'
	when bank in ('KCB', 'DTD','Equity') then 'Kenya'
	else salary
end as new_details_employee
from trashion.employee_salary
where employee_id in ('EM001','EM002','EM003') or gender = 'male';

create schema practice;
create TABLE practice.sales(
sales_id VARCHAR primary key ,
product_id VARCHAR (10),
quantity_sold INT ,
sales_date DATE,
total_price DECIMAL (10, 2)

);

insert into practice.sales(sales_id, product_id, quantity_sold,sales_date,total_price)
values 
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

select * from practice.sales;

create table practice.products(
product_id VARCHAR primary key,
product_name VARCHAR (100),
category VARCHAR (50),
unit_price DECIMAL(10, 2)
);
insert into practice.products(product_id, product_name, category, unit_price)
values
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

select * from practice.products;
select product_name, unit_price from practice.products;
select * from practice.sales where total_price > 100;
select * from practice.products where category = 'Electronics'; 

select sales_id, total_price 
from practice.sales
where sales_date = '2024-01-03';

select product_id, product_name
from practice.products
where unit_price > 100;

--getting the sum of a we use SUM() function
select SUM (total_price) as total_revenue
from practice.sales;
select SUM (quantity_sold) as total_quantity_sold
from practice.sales

--getting the average we use AVG() function
select AVG (unit_price) as average_unit_price
from practice.products;

--select in descending(DESC)  ascending (ASC)order using limit
select product_name, unit_price
from practice.products
order by unit_price DESC
limit 2;

--calaculates the total revenue generated from sales of electronics
--by joining sales and product table on the productid column
select SUM(practice.sales.total_price) as total_revenue
from practice.sales
join practice.products on practice.sales.product_id = practice.products.product_id
where practice.products.category = 'Electronics';

select product_name, category
from practice.products
order by category asc;
















