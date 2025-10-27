-- Task 5: SQL Joins
-- A deeper dive into understanding different joins in sql

-- Create a sample dataset
-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Bangalore'),
(2, 'Bob', 'Hyderabad'),
(3, 'Charlie', 'Chennai'),
(4, 'David', 'Pune');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 75000),
(102, 2, 'Mobile', 20000),
(103, 2, 'Keyboard', 2500),
(104, 5, 'Monitor', 12000); -- Customer not in Customers table


-- 1. INNER JOIN: Returns only matching records from both tables.
SELECT c.customer_name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;
-- Shows only customers who have placed orders.


-- 2. LEFT JOIN: Returns all records from the left table (Customers) and matched records from Orders.
SELECT c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;
-- Shows all customers —> those without orders will have NULLs for product/amount.


-- 3. RIGHT JOIN: Returns all records from the right table (Orders) and matched records from Customers.
SELECT c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;
-- Shows all orders —> even if the customer is missing from the Customers table.


-- 4. FULL JOIN: Returns all records when there’s a match in either table.
SELECT c.customer_id, c.customer_name, o.order_id, o.product
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id, c.customer_name, o.order_id, o.product
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;
-- Shows all customers and all orders, including unmatched rows.

-- Note: MySQL doesn’t support FULL OUTER JOIN directly. You can simulate it by combining a LEFT JOIN and a RIGHT JOIN using UNION.
-- Full outer join - In PostgreSQL
SELECT c.customer_name, o.product, o.amount
FROM Customers c
FULL OUTER JOIN Orders o
ON c.customer_id = o.customer_id;

