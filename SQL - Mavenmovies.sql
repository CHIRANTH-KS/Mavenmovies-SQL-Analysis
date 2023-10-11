/*1. Write a SQL query to count the number of characters except the spaces for each actor.
 Return first 10 actors name length along with their name.*/
 
SELECT CONCAT(first_name,' ',last_name) AS Name ,LENGTH(CONCAT(first_name,last_name)) as Name_length 

FROM actor  LIMIT 10;


/*2. List all Oscar awardees(Actors who received Oscar award) with their full names and
 length of their names.*/

SELECT CONCAT(first_name,' ',last_name) AS Full_name, LENGTH(CONCAT(first_name,' ',last_name)) 

AS Name_length, awards FROM actor_award WHERE awards like '%oscar%' ORDER BY name_length DESC;


/*3. Find the actors who have acted in the film ‘Frost Head’.*/

SELECT a.first_name, a.last_name, f.title FROM actor a INNER JOIN film_actor fa 

ON a.actor_id=fa.actor_id INNER JOIN film f 

ON f.film_id=fa.film_id WHERE title='Frost Head';


/*4. Pull all the films acted by the actor ‘Will Wilson’.*/

SELECT a.first_name, a.last_name, f.title FROM actor a INNER JOIN film_actor fa 

ON a.actor_id=fa.actor_id INNER JOIN film f 

ON f.film_id=fa.film_id WHERE first_name= 'Will' AND last_name='Wilson';


/*5. Pull all the films which were rented and return in the month of May.*/

SELECT f.title, r.rental_date, r.return_date FROM film f INNER JOIN inventory i 

ON f.film_id=i.film_id INNER JOIN rental r 

ON i.inventory_id= r.inventory_id 

 WHERE (MONTH(rental_date)=5 AND MONTH(return_date) =5); 
 
 
 /*6. Pull all the films with ‘Comedy’ category.*/
 
 SELECT f. title, c.name FROM film f INNER JOIN film_category fc 
 
 ON f.film_id = fc.film_id INNER JOIN category c 
 
 ON fc.category_id= c.category_id
 
 WHERE NAME = 'comedy';









