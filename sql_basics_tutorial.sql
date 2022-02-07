/*
Retail Mart Management

Description
A data analyst of a retail shop, Happy Mart, wants to store the product details, 
the customer details, and the order details to provide unparalleled insights about 
customer behavior and product stock details daily.

Objective:
The design of the database helps to easily evaluate and identify the performance of the shop to increase the daily sales.
*/

#(1) Write a query to create a database named SQL basics.
create database SQL_BASICS;

#(2) Write a query to select the database SQL basics.
show databases
use sql_basics;

#(3) Write a query to create a product table with fields as product code, product name, price, stock and category, 
# customer table with the fields as customer id, customer name, customer location, and customer phone number and, 
# sales table with the fields as date, order number, product code, product name, quantity, and price.
create table product_table(
	product_code int not null,
    product_name varchar(100) not null,
    price int not null,
    stock int not null,
    category varchar(100) not null)
    
create table customer_table(
	customer_id int not null,
    customer_name varchar(100) not null,
    customer_location varchar(100) not null,
    customer_phoneNo int not null)
    
create table sales_table(
	order_date date not null,
    order_no varchar(100) not null,
    customer_id int not null,
    customer_name varchar(100),
    product_code int not null,
    product_name varchar(100) not null,
	quantity int not null,
    price int not null)
    
#(4) Write a query to insert values into the tables.
# for product_table
insert into product_table(product_code, product_name, price, stock, category)
values 
	(1, 'tulip', 198, 5, 'perfume'),
    (2, 'cornoto', 50, 21, 'icecream'),
	(3, 'Pen', 10, 52, 'Stationary'),
    (4, 'Lays', 10, 20, 'snacks'),
    (5, 'mayanoise', 90, 10, 'dip'),
    (6, 'jam', 105, 10, 'spread'),
    (7, 'shampoo', 5, 90, 'hair product'),
    (8, 'axe', 210, 4, 'perfume'),
    (9, 'park avenue', 901, 2, 'perfume'),
    (10, 'wattagirl', 201, 3, 'perfume'),
	(11, 'pencil', 4, 10, 'Stationary'),
    (12, 'sharpener', 5, 90, 'Stationary'),
	(13, 'sketch pen', 30, 10, 'Stationary'),
    (14, 'tape', 15, 30, 'Stationary'),
    (15, 'paint', 60, 12, 'Stationary'),
    (16, 'chocolate', 25, 50, 'snacks'),
    (17, 'biscuts', 60, 26, 'snacks'),
    (18, 'mango', 100, 21, 'fruits'),
    (19, 'apple', 120, 9, 'fruits'),
    (20, 'kiwi', 140, 4, 'fruits'),
    (21, 'carrot', 35, 12, 'vegetable'),
    (22, 'onion', 22, 38, 'vegetable'),
    (23, 'tomato', 21, 15, 'vegetable'),
    (24, 'serum', 90, 4, 'hair product'),
    (25, 'conditioner', 200, 5, 'hair product'),
    (26, 'oil bottle', 40, 2, 'kictchen utensil');
    
# for customer_table
insert into customer_table(customer_id, customer_name, customer_location, customer_phoneNo)
values 
	(1111, 'Nisha', 'kerala', 8392320),
    (1212, 'Oliver', 'kerala', 4353891),
    (1216, 'Nila', 'delhi', 3323242),
    (1246, 'Vignesh', 'chennai', 1111212),
    (1313, 'shiny', 'Maharastra', 5454543),
    (1910, 'Mohan', 'mumbai', 9023941),
    (2123, 'Biyush', 'Bombay', 1253358),
    (3452, 'Alexander', 'West Bengal', 1212134),
    (3921, 'Mukesh', 'Manipur', 4232321),
    (5334, 'Christy', 'pakistan', 2311111),
    (9021, 'Rithika', 'Kashmir', 1121344),
    (9212, 'Jessica', 'banglore', 1233435),
    (9875, 'Stephen', 'chennai', 1212133);
    
# for sales_table
insert into sales_table(order_date, order_no, customer_id, customer_name, product_code, product_name, quantity, price)
values 
	('24.07.2016', 'HM06', 9212, 'Jessica', 11, 'pencil', 3, 30),
	('19.10.2016', 'HM09', 3921, 'Mukesh', 17, 'biscuits', 10, 600),
	('30.10.2016', 'HM10', 9875, 'Stephen', 2, 'cornoto', 10, 500),
	('12.04.2018', 'HM03', 1212, 'Oliver', 20, 'kiwi', 3, 420),
	('2.05.2018', 'HM05', 1910, 'Mohan', 20, 'kiwi', 2, 280),
	('20.09.2018', 'HM08', 5334, 'Chirsty', 16, 'chocolate', 2, 50),
	('11.01.2019', 'HM07', 1246, 'Vignesh', 19, 'apple', 5, 600),
	('15.03.2019', 'HM01', 1910, 'Mohan', 5, 'mayanoise', 4, 360),
	('10.02.2021', 'HM04', 1111, 'Nisha', 25, 'conditioner', 5, 1000),
	('12.02.2021', 'HM02', 2123, 'Biyush', 3, 'Pen', 2, 20);

#(5) Write a query to add two new columns such as S_no and categories to the sales table.
alter table sales_table
	add S_no int not null,
    add categories varchar(100) not null;
    
#(6) Write a query to change the column type of stock in the product table to varchar.
alter table product_table modify stock varchar(100);

#(7) Write a query to change the table name from customer-to-customer details.
alter table customer_table rename customer_details_table;

#(8) Write a query to drop the columns S_no and categories from the sales table.
alter table sales_table
drop column S_no,
drop column categories;

#(9) Write a query to display order id, customer id, order date, price, and quantity from the sales table.
select order_no, customer_id, order_date, price, quantity from sales_table;

#(10) Write a query to display all the details in the product table if the category is stationary.
select * from product_table where category = 'stationary';

#(11) Write a query to display a unique category from the product table.
select distinct category from product_table;

#(12) Write a query to display the sales details if quantity is greater than 2 and price is lesser than 500 from the sales table.
select * from sales_table where quantity >= 2 and price <= 500;

#(13) Write a query to display the customer’s name if the name ends with a.
select * from customer_details_table where customer_name like "a";

#(14) Write a query to display the product details in descending order of the price.
select * from product_table order by price desc;

#(15) Write a query to display the product code and category from similar categories that are greater than or equal to 2.
select count(category) from product_table having count(*) => 2;

#(16) Write a query to display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows.
select order_no, customer_name
from sales_table, customer_details_table
where sales_table.customer_id = customer_details_table.customer_id;







