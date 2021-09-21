-- Create Table
Create table Orders (
    person_id serial primary key,
    order_id serial,
    product_name varchar(10),
    product_price float,
    quantity integer
);
-- add 5 orders
insert into Orders (product_name,product_price,quantity)
values ('4k Monitor',499.99,2),
('Desk',399.99,1),
('Shirts',10.75,6),
('Chair',45.65,2),
('Socks',4.99,13);

-- Select all the records from the orders table.
select *
  from Orders;
-- Calculate the total number of products ordered.
select sum(quantity)
  from Orders;
-- Calculate the total order price.
select sum(product_price)
  from Orders;
-- Calculate the total order price by a single person_id.
select product_price
  from Orders
  where person_id = 2;

