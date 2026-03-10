-- 1. Create Database
CREATE DATABASE sales_project;

-- 2. Use Database
USE sales_project;

-- 3. Preview first 10 rows
SELECT TOP 10 *
FROM sales_data_sample;

-- 4. Total rows in dataset
SELECT COUNT(*) AS total_records
FROM sales_data_sample;

-- 5. Find missing values in important columns
SELECT *
FROM sales_data_sample
WHERE SALES IS NULL
   OR CUSTOMERNAME IS NULL
   OR COUNTRY IS NULL;

-- 6. Check if order numbers repeat
SELECT ORDERNUMBER, COUNT(*) AS order_count
FROM sales_data_sample
GROUP BY ORDERNUMBER
HAVING COUNT(*) > 1;

-- 7. Calculate total sales revenue
SELECT SUM(SALES) AS total_revenue
FROM sales_data_sample;

-- 8. Total number of unique orders
SELECT COUNT(DISTINCT ORDERNUMBER) AS total_orders
FROM sales_data_sample;

-- 9.Sales revenue by product category
SELECT PRODUCTLINE,
       SUM(SALES) AS revenue
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY revenue DESC;

-- 10. Sales by country
SELECT COUNTRY,
       SUM(SALES) AS revenue
FROM sales_data_sample
GROUP BY COUNTRY
ORDER BY revenue DESC;

-- 11.Customers generating highest revenue
SELECT TOP 10 CUSTOMERNAME,
       SUM(SALES) AS total_spent
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY total_spent DESC;

-- 12.Revenue by deal size
SELECT DEALSIZE,
       SUM(SALES) AS revenue
FROM sales_data_sample
GROUP BY DEALSIZE
ORDER BY revenue DESC;

-- 13.Monthly sales performance
SELECT MONTH_ID,
       SUM(SALES) AS monthly_sales
FROM sales_data_sample
GROUP BY MONTH_ID
ORDER BY MONTH_ID;

-- 14.Sales performance by year
SELECT YEAR_ID,
       SUM(SALES) AS yearly_sales
FROM sales_data_sample
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

-- 15.Top selling products
SELECT PRODUCTCODE,
       SUM(SALES) AS revenue
FROM sales_data_sample
GROUP BY PRODUCTCODE
ORDER BY revenue DESC;

-- 16.Count orders by status
SELECT STATUS,
       COUNT(*) AS total_orders
FROM sales_data_sample
GROUP BY STATUS
ORDER BY total_orders DESC;

-- 17.Sales distribution by territory
SELECT TERRITORY,
       SUM(SALES) AS revenue
FROM sales_data_sample
GROUP BY TERRITORY
ORDER BY revenue DESC;














