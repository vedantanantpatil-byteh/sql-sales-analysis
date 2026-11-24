-- =====================================
-- Online Store Sales Analysis (MySQL)
-- =====================================

-- Step 1: Create database
CREATE DATABASE sales_project;
USE sales_project;

-- Step 2: Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

-- Step 3: Insert sample data
INSERT INTO customers VALUES
(1,'Rahul','Mumbai'),
(2,'Priya','Pune'),
(3,'Amit','Delhi'),
(4,'Sneha','Mumbai'),
(5,'Karan','Pune');

INSERT INTO products VALUES
(1,'Laptop','Electronics',50000),
(2,'Phone','Electronics',20000),
(3,'Headphones','Accessories',2000),
(4,'T-Shirt','Fashion',800),
(5,'Shoes','Fashion',2500);

INSERT INTO orders VALUES
(1,1,1,1,'2026-01-10'),
(2,2,2,2,'2026-01-15'),
(3,3,3,3,'2026-02-05'),
(4,4,4,5,'2026-02-18'),
(5,5,5,2,'2026-03-02'),
(6,1,3,1,'2026-03-10'),
(7,2,5,1,'2026-03-20'),
(8,4,2,1,'2026-04-01'),
(9,3,1,1,'2026-04-12'),
(10,5,4,3,'2026-04-25');

-- =====================================
-- BUSINESS QUESTIONS
-- =====================================

-- Q1: What is the total revenue?
SELECT SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- Q2: Which category generates the most revenue?
SELECT p.category, SUM(o.quantity * p.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- Q3: Who are the top 3 customers by spending?
SELECT c.name, SUM(o.quantity * p.price) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- Q4: How are sales distributed across cities?
SELECT c.city, SUM(o.quantity * p.price) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.city
ORDER BY revenue DESC;

-- Q5: What is the month-wise sales trend?
SELECT MONTH(order_date) AS month, SUM(o.quantity * p.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY MONTH(order_date)
ORDER BY month;

-- Q6: What is the best-selling product by units sold?
SELECT p.product_name, SUM(o.quantity) AS units_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 1;