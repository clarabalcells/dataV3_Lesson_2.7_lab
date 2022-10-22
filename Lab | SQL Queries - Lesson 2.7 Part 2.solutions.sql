#In the table actor, which are the actors whose last names are not repeated? 

SELECT actor_id, last_name as "unique_last_names" FROM actor 
GROUP BY last_name
HAVING COUNT(last_name) = 1
ORDER BY actor_id;

#Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once


SELECT actor_id, last_name as "unique_last_names"
FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY actor_id;



#Using the rental table, find out how many rentals were processed by each employee.

SELECT DISTINCT customer_id, staff_id from sakila.rental
GROUP BY customer_id
HAVING customer_id
ORDER BY staff_id;


#Using the film table, find out how many films were released.

SELECT * FROM FILM
SELECT COUNT(film_id) as "number_of_films_released" FROM SAKILA.FILM
GROUP by years
HAVING count(film_id) > 1;



#Using the film table, find out how many films there are of each rating.


SELECT COUNT(DISTINCT rating) FROM film
GROUP BY title;


#What is the mean length of the film for each rating type. Round off the average lengths to two decimal places


SELECT rating AS "film_rating", length  
FROM sakila.film
GROUP BY rating
HAVING ROUND(AVG(length),2);


#Which kind of movies (rating) have a mean duration of more than two hours?


SELECT rating AS "film_rating", length
FROM sakila.film
GROUP BY rating
HAVING AVG(length) >= 100;alter


