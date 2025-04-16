# task-6
# Sales Trend Analysis Using SQL

## Overview
This project focuses on analyzing monthly sales trends using SQL. The analysis involves calculating total monthly revenue and order volumes from an `online_sales` dataset.

## Objectives
- Analyze and understand monthly revenue and order volume trends.
- Learn SQL techniques for grouping and aggregating data.
- Create a well-structured SQL query for extracting insights.

## Tools Used
- **Database**: PostgreSQL / MySQL / SQLite
- **Programming Language**: SQL

## Dataset
The dataset contains the following fields:
- `order_date`: Date when the order was placed.
- `amount`: Sales amount for the order.
- `order_id`: Unique identifier for each order.

## Approach
1. **Data Inspection**:
   Verified the schema of the `online_sales` table to understand its structure.
   
2. **Query Development**:
   Wrote an SQL script to:
   - Extract year and month from the `order_date` field.
   - Calculate total revenue using `SUM(amount)`.
   - Calculate total order volume using `COUNT(DISTINCT order_id)`.
   - Group results by year and month.
   - Sort the results by year and month for trend analysis.

3. **Output**:
   - Generated a table showing year, month, total revenue, and order volume.

## SQL Query
```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
