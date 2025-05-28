SELECT title, description FROM film ORDER BY title;

Select * from film where length > 60 and length <75

Select * from film where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost=28.99)

Select last_name from customer where first_name = 'Mary'

Select * from film where not length < 50 and (rental_rate = 2.99 or rental _rate = 4.99)