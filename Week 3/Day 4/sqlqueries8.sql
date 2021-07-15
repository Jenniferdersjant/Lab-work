## Use the RANK() and the table of your choice rank films by length (filter out the rows that have nulls or 0s in length column).
## In your output, only select the columns title, length, and the rank.

select title, length, 
rank() over (order by length) as ranking
from sakila.film
where length IS NOT NULL
or length<>0
order by title;

## Build on top of the previous query and rank films by length within the rating category 
## (filter out the rows that have nulls or 0s in length column). 
## In your output, only select the columns title, length, rating and the rank.

select title, length, rating,
rank() over (partition by rating order by length) as ranking
from film
where length IS NOT NULL
or length<>0
order by rating;

## How many films are there for each of the categories? 
## Inspect the database structure and use appropriate join to write this query.

select 
c.name as categoryname,
count(title) as total
from film f
join film_category fc
using(film_id)
join category c
using(category_id)
group by categoryname;

##Which actor has appeared in the most films?
select 
a.first_name, a.last_name,
count(*) as total
from film f
join film_actor fa
using(film_id)
join actor a
using(actor_id)
group by a.first_name, a.last_name
order by total desc;

## Most active customer (the customer that has rented the most number of films)
select c.first_name, 
c.last_name,
count(customer_id) as total_rented
from customer c
join rental r
using(customer_id)
group by customer_id
order by total_rented desc;
