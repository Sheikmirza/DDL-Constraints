-- MYSQL ASSIGNMENT 2

create database Sales;
use sales;
create table Orders (
Order_id  int primary key , 
Customer_id int unique  ,
Product_Category varchar (10),
Ordered_Item varchar (20), 
Contact_No int not null);

desc orders;

alter table orders add column order_quantity int ;

rename table orders to sales_orders;
alter table sales_orders modify column Product_Category varchar (20);

desc sales_orders;

insert into  sales_orders values
(1,100, "Furniture", "chair",906121,78);
insert into  sales_orders values
(2,101, "electronics", "watche",909456,42);
insert into  sales_orders values
(3,102, "electronics", "tv",9567221,76);
insert into  sales_orders values
(4,103, "footwear", "sneakers",95463351,32);
insert into  sales_orders values
(5,104, "clothing", "shirt",789569,23);
insert into  sales_orders values
(6,105, "electronics", "smartphones",876541,24);
insert into  sales_orders values
(7,106, "furnitures", "sofa",92323821,56);
insert into  sales_orders values
(8,107, "electronics", "smart watches",456321,44);
insert into  sales_orders values
(9,108, "clothing", "jacket",989701,23);
insert into  sales_orders values
(10,119, "clothing", "t-shirt",9123693,81);

select * from sales_orders;
update sales_orders set customer_id=102 where order_id=3;

select customer_id  from sales_orders; 
select ordered_item  from  sales_orders; 

update sales_orders set ordered_item ="elecctronics" where order_id=8 ;

drop table sales_orders;