-- Count how many orders were made from the USA.
select count(*) from invoice
    where billing_country = 'USA';
-- Find the largest order total amount.
select total from invoice
    order by total desc
    limit 1;
-- Find the smallest order total amount.
select total from invoice
    order by total 
    limit 1;
-- Find all orders bigger than $5.
select * from invoice
	where total > 5;
-- Count how many orders were smaller than $5.
select count(*) from invoice
	where total < 5
-- Count how many orders were in CA, TX, or AZ (use IN).
select count(*) from invoice
	where billing_state = 'TX'
    or billing_state = 'CA'
    or billing_state = 'AZ';
-- Get the average total of the orders.
select AVG(total) from invoice;
-- Get the total sum of the orders.
select SUM(total) from invoice;
-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
update invoice set total = 24 where invoice_id = 5;
-- Delete the invoice with an invoice_id of 1.
delete from invoice where invoice_id = 1;
