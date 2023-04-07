--1. List all customers who live in Texas (use JOINS)
SELECT first_name, last_name
FROM customer


--2. Get all payments above $6.99 with the Customer's Full Name 
SELECT first_name, last_name
FROM customer, payment
WHERE payment.amount > 6.99;

--3. Show all customers names who have made payments over $175(use subqueries) 2 Douglas and Mary
SELECT first_name, customer.customer_id
FROM customer
WHERE customer_id IN(
SELECT customer_id
FROM payment
WHERE amount > 175
);


--4. List all customers that live in Nepal (use the city table) 524 
--Did not use city table because Nepal is a country unless I did it wrong?
SELECT customer_id, country
FROM customer, country;


--5. Which staff member had the most transactions? Had problems with this tried inner join but didn't get it
SELECT s.staff_id, payment.payment_id
FROM staff AS s
INNER JOIN payment_id AS payment
ON s.staff_id = p.payment_id;

--6. How many movies of each rating are there? a lot
SELECT rating, film_id
FROM film;

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
-- Mary, Peter, Douglas, Alvin, Alfredo. I did the same thing here for #3 too but changed the amount
-- not sure if I did it right?
SELECT first_name, customer.customer_id
FROM customer
WHERE customer_id IN(
SELECT customer_id
FROM payment
WHERE amount > 6.99
);

--8.)How many free rentals did out store give away? Touble with this problem too Ambiguous
SELECT payment.amount, rental.rental_id
FROM payment, rental
WHERE amount = 0;

