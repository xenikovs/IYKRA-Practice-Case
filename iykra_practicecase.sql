/* Films about 'astronaut' mostly are Sci-Fi films
 * Because there are no specific films with astronaut in the title or category
 * we will give recommendations of Sci-Fi films */
select count(*)
from film inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category."name" = 'Sci-Fi';

/* R rated films with replacement cost between $5 and $15*/
select count(*) from film where rating='R' and replacement_cost>5 and replacement_cost<15;

/* Number of payments and total payment amounts for each staff members */
select staff_id, count(*) as number_of_payment, sum(amount) as total_payment
from payment group by staff_id;

/* Average replacemetn cost of movies by rating */
select rating, avg(replacement_cost) as average_rep_cost from film group by rating;

/* Top 5 customers */
select customer.first_name, customer.last_name, customer.email, sum(amount) as total_spent
from customer inner join payment on customer.customer_id = payment.customer_id
group by customer.customer_id order by total_spent desc limit 5;

/* Number of copies of each movie in each store */
select film.title, inventory.store_id, count(*) as total_copies
from film inner join inventory on film.film_id = inventory.film_id 
group by title, store_id order by title, store_id asc;

/* Platinum credit card eligible customers */
select customer.first_name, customer.last_name, customer.email
from customer inner join payment on customer.customer_id = payment.customer_id
group by customer.customer_id having count(*)>40 ;

select * from payment;