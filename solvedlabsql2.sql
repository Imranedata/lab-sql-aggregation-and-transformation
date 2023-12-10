SELECT
  MAX(length) AS max_length,
  MIN(length) AS min_length
FROM film;

SELECT
  ROUND(AVG(length)) as avg_length
  from film;
  

SELECT
  CONCAT(
    floor(AVG(length) / 60),     
    'h ',
    round(AVG(length) % 60) ,           
    'm'
  ) AS average_length
FROM film;

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) as difference
FROM rental;

SELECT rental_id, rental_date, return_date,
  MONTH(rental_date) AS rental_month,
  DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;

SELECT
  title AS film_title,
  IFNULL(rental_duration, 'Not Available') AS rental_duration
FROM film
ORDER BY title ASC;

SELECT COUNT(title) AS number_of_films
FROM sakila.film_list;

SELECT rating, COUNT(film_id) AS number_of_films
FROM film
GROUP BY rating
ORDER BY number_of_films DESC;

SELECT
  rating,
  ROUND(AVG(length), 2) AS mean_length
FROM film
GROUP BY rating
HAVING mean_length > 120
ORDER BY mean_length DESC;

















