-- Create Tabel
Create table Person (
    person_id serial primary key,
    first_name varchar(150),
    age integer,
    height_cm integer,
    city varchar(150), 
    fave_color varchar(150)
);
-- Add 5 people
insert into Person(first_name,age,height_cm,city,fave_color)
	values('Bob',35,177,'Los Angels','Blue'),
  ('Chris',27,189,'Paris','Pink'),
  ('Liv',19,145,'Hong Kong','Red'),
  ('Matilda',36,151,'Paris','Black'),
  ('Ron',41,180,'Kansas City','Brown'),
  ('Juan',18,179,'San Fransisco','Violet');
-- Select from tallest to shortest
  select * from Person
  order by height_cm desc;
-- select from shortest to tallest
  select * from Person
  order by height_cm;
--   select from oldest  to youngest
select * from Person
  order by age desc;
--   select those older than 20
select * from Person 
  where age > 20;
--  Select those that are 18 
select * from Person 
  where age = 18;
--  Select those older than 30 but younger than 20
select * from Person 
  where age < 20 or age > 30;
--   Select those that are not 27
select * from Person 
  where age <> 27;
-- Select all the people in the person table where their favorite color is not red.
select * from Person 
  where fave_color <> 'Red';
-- Select all the people in the person table where their favorite color is not red and is not blue.
select * from Person 
  where fave_color <> 'Red' and fave_color <> 'Blue';
-- Select all the people in the person table where their favorite color is orange or green.
select * from Person 
  where fave_color = 'Orange' or fave_color = 'Green';
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
select * from Person 
  where fave_color IN('Orange','Blue','Green');
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
select * from Person 
  where fave_color IN('Yellow','Purple');
