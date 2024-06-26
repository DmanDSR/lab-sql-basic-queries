use sakila;


SELECT table_schema,table_name 
FROM information_schema.tables 
WHERE  table_type = 'BASE TABLE'  
AND table_schema = 'sakila' 
AND table_schema not in ('information_schema','mysql', 'performance_schema','sys') 
ORDER BY table_schema, table_name;

SELECT *
FROM actor;

SELECT * 
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT name as language
FROM language;

Select first_name
FROM staff;

SELECT DISTINCT(release_year)
FROM film;

SELECT COUNT(*) -- store_id
FROM store;

SELECT COUNT(*) -- staff_id
FROM staff;

SELECT COUNT(*) as avaiable FROM rental where return_date is null;
SELECT COUNT(*) as rented FROM rental where return_date is not null;


SELECT *
FROM inventory;

SELECT COUNT(DISTINCT(last_name))
FROM actor;

Select *
FROM film
order by length desc
LIMIT 10;

Select *
FROM actor
Where first_name = "SCARLETT";

SELECT *
FROM film
WHERE title like '%ARMAGEDDON%' and length > 100;

SELECT count(*)
FROM film
WHERE special_features LIKE "%Behind the scenes%";
