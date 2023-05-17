--1. List all customers who live in Texas (use JOINS) 5
SELECT first_name, address.district
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
WHERE address.district = 'Texas';


--2. Get all payments above $6.99 with the Customer's Full Name 
SELECT CONCAT(first_name,' ',last_name) as full_name, payment.amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99;

--3. Show all customers names who have made payments over $175(use subqueries) 2 Douglas and Mary
SELECT first_name, payment.amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment_id IN(
SELECT payment_id
FROM payment
WHERE amount > 175
);

--4. List all customers that live in Nepal (use the city table) Kevin
SELECT first_name, country  
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';


--5. Which staff member had the most transactions? JON
SELECT first_name, staff.staff_id, COUNT(payment_id)
FROM staff
JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY first_name, staff.staff_id
ORDER BY COUNT(payment_id) DESC;


--6. How many movies of each rating are there?
SELECT rating, COUNT(*) AS rating_count
FROM film
GROUP BY rating;


--7.Show all customers who have made a single payment above $6.99 (Use Subqueries) 5 customers
SELECT first_name, payment.amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment_id IN(
SELECT payment_id
FROM payment
WHERE amount > 6.99
);

--8.)How many free rentals did out store give away?
SELECT rental_id, payment.amount
FROM rental
JOIN payment
ON rental.rental_id = payment.rental_id
WHERE payment_id IN (
SELECT payment_id
FROM payment
WHERE amount = 0
);





