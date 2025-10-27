# Task 5 – SQL Joins (INNER, LEFT, RIGHT, FULL)

##  Objective
Learn how to combine and compare data from multiple tables using different types of SQL joins.


##  Overview
This task demonstrates how to merge relational data using various SQL joins between two tables — **Customers** and **Orders**.

Joins:
-  **INNER JOIN** – returns only matching records  
-  **LEFT JOIN** – returns all records from the left table  
-  **RIGHT JOIN** – returns all records from the right table  
-  **FULL OUTER JOIN** – returns all records from both tables  
  *(simulated using `UNION` in MySQL, supported directly in PostgreSQL)*


## Tables Used
| Table | Description |
|--------|--------------|
| **Customers** | Contains customer information (ID, name, city) |
| **Orders** | Contains order details (order ID, customer ID, product, amount) |


##  Tools
- MySQL Workbench  
- PostgreSQL (for FULL OUTER JOIN)
  

## Key Learnings
- Understand how each join type affects query results.  
- Handle missing or unmatched records between related tables.  
- Simulate a FULL JOIN in MySQL using `UNION`.  
- Apply join concepts across different SQL environments.


## Files
- **task_5_joins.sql** → SQL script containing table creation, data insertion, and all join queries.

