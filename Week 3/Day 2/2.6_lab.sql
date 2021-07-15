## Get release years.

select distinct release_year from film;

## Get all films with ARMAGEDDON in the title.

select title from film
where title LIKE '%ARMAGEDDON%';

## Get all films which title ends with APOLLO.

select title from film
where title LIKE '%APOLLO';

## Get 10 the longest films.
select length from film
order by length desc
limit 10;

## How many films include Behind the Scenes content?
select count(special_features) from film 
where special_features like '%behind the scenes';

## Drop column picture from staff.
alter table staff
drop column picture

## A new person is hired to help Jon. 
## Her name is TAMMY SANDERS, and she is a customer. 
## Update the database accordingly.
    
insert into staff (first_name, last_name, email, adress_id, active, last_update)
select first_name, last_name, adress_id, email, active:1, last_update,
from customer where first_name='TAMMY' and last_name='SANDERS';
