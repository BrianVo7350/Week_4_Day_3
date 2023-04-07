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


--4. List all customers that live in Nepal (use the city table)
SELECT *
FROM city
LEFT JOIN customer

--5. Which staff member had the most transactions?
SELECT staff, amount
FROM staff, payment;
--6. How many movies of each rating are there?
SELECT rating, film_id
FROM film;

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
-- Mary, Peter, Douglas, Alvin, Alfredo
SELECT first_name, customer.customer_id
FROM customer
WHERE customer_id IN(
SELECT customer_id
FROM payment
WHERE amount > 6.99
);

--8.)How many free rentals did out store give away?

--I will resubmit when finished.