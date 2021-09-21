-- List all employee first and last names only that live in Calgary.
select first_name,last_name from employee
    where city = 'Calgary';
-- Find the birthdate for the youngest employee.
select birth_date from employee
order by birth_date 
limit 1;
-- Find the birthdate for the oldest employee.
select birth_date from employee
order by birth_date desc
limit 1;
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). 
-- * You will need to query the employee table to find the id for Nancy Edwards
select * from employee
    where first_name = 'Nancy';

select * from employee
    where reports_to = 2;
-- Count how many people live in Lethbridge.
select count(*) from employee
where city = 'Lethbridge';