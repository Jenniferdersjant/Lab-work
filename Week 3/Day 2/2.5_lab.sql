## Select all the actors with the first name ‘Scarlett’.

select first_name from actor
where first_name='scarlett';

## How many films (movies) are available for rent and how many films have been rented?

select count(film_id) from film; 
select count(rental_id) from rental; 

## What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select min(length) as min_duration from film;
select max(length) as max_duration from film;

## What's the average movie duration expressed in format (hours, minutes)?
select AVG(length) div 60, floor(mod(AVG(length), 60)) from film;

## How many distinct (different) actors' last names are there?
SELECT 
    COUNT(DISTINCT last_name)
FROM
    actor;
## Since how many days has the company been operating (check DATEDIFF() function)?
select datediff(max(rental_date), min(rental_date)) as 'date_operating' from rental;

## Show rental info with additional columns month and weekday. Get 20 results
select *, monthname(rental_date) as month, weekday(rental_date) as weekday 
from rental
limit 20;

## Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week
select *, monthname(rental_date) as month, weekday(rental_date) as weekday,
case
when (weekday(rental_date) in (7,1)) then 'weekend'
else 'workday'
end
as day_type
from rental;

## How many rentals were in the last month of activity?

