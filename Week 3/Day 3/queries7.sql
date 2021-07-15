## which last names are not repeated
select distinct last_name from actor;

## Which last names appear more than once?
select last_name,
count(last_name)
from actor
group by last_name
having count(last_name)>1;

## Using the rental table, find out how many rentals were processed by each employee.
select s.staff_id, count(r.rental_id) as countrent
from rental r
join staff s
using (staff_id)
group by s.staff_id;

## Using the film table, find out how many films were released each year
select release_year, count(release_year) as countyear
from film
group by release_year;

## Using the film table, find out for each rating how many films were there.
select rating, count(rating) as countrating
from film
group by rating;

## What is the average length of films for each rating? Round off the average lengths to two decimal places.
select rating, round(avg(length),2) as avglength
from film
group by rating;

## Which kind of movies (based on rating) have an average duration of two hours or more?
select rating, round(avg(length),2) as avglength
from film
group by rating
having avg(length)>=120;
