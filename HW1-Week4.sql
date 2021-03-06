--############################### HW 1 - Week 4 ###############################--

-- Question 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2
SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;


-- Question 2. How many payments were made between $3.99 and $5.99?
-- Answer: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- Question 3. What film does the store have the most of? (search in inventory)
-- Answer: 72 films
SELECT film_id, COUNT(film_id) as film_counts, COUNT(store_id) as store_counts
FROM inventory
GROUP BY film_id
ORDER BY COUNT(store_id) DESC;


-- Question 4. How many customers have the last name ‘William’?
-- Answer: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William'
GROUP BY last_name;


-- Question 5. What store employee (get the id) sold the most rentals?
-- Answer: staff_id 1
SELECT staff_id, COUNT(staff_id) as sold_rentals
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;


-- Question 6. How many different district names are there?
-- Answer: 377 (one row is empty) 
SELECT COUNT(DISTINCT district)
FROM address
WHERE district <> ''


-- Question 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508
SELECT film_id, COUNT(actor_id) as actors_count
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;


-- Question 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';


-- Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430  
GROUP BY amount
HAVING COUNT(amount) > 250;


-- Question 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5 categories and PG-13 has 223 rating  
SELECT rating, COUNT(film_id) as rating_count
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;

