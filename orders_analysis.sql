
-- Order and Sales Analysis

-- 1. Total number of orders per order status
SELECT order_status, COUNT(*) AS order_count
FROM customer_orders
GROUP BY order_status;

-- 2. Monthly sales trend (total order amount per month)
SELECT DATE_TRUNC('month', order_date) AS order_month, SUM(order_amount) AS monthly_sales
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;

-- 3. Revenue by order status
SELECT order_status, SUM(order_amount) AS total_revenue
FROM customer_orders
GROUP BY order_status;

-- Customer Analysis

-- 4. Number of repeat customers (placed more than 1 order)
SELECT customer_id, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 5. Monthly active customers
SELECT DATE_TRUNC('month', order_date) AS order_month, COUNT(DISTINCT customer_id) AS active_customers
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;

-- 6. Customer segmentation based on total order value
SELECT customer_id,
       COUNT(*) AS order_count,
       SUM(order_amount) AS total_spent,
       CASE
           WHEN SUM(order_amount) >= 1000 THEN 'High-Value'
           WHEN SUM(order_amount) >= 500 THEN 'Mid-Value'
           ELSE 'Low-Value'
       END AS customer_segment
FROM customer_orders
GROUP BY customer_id;
