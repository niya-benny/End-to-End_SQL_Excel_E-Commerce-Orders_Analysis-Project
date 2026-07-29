#Top 5 Revenue-Generating Countries
SELECT
    country,
    ROUND(SUM(total_price), 2) AS revenue
FROM orders
GROUP BY country
ORDER BY revenue DESC
LIMIT 5;

#Top 5 Best-Selling Categories
SELECT
    category,
    SUM(qty) AS total_quantity_sold
FROM orders
GROUP BY category
ORDER BY total_quantity_sold DESC
LIMIT 5;

#Average Order Value by Customer Segment
SELECT
    customer_segment,
    ROUND(AVG(total_price),2) AS average_order_value
FROM orders
GROUP BY customer_segment
ORDER BY average_order_value DESC;

#Orders Placed in 2024
SELECT COUNT(*) AS orders_2024
FROM orders
WHERE YEAR(order_date) = 2024;

#Monthly Revenue Trend
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

#Categories with Revenue Greater Than $500,000
SELECT
    category,
    ROUND(SUM(total_price),2) AS revenue_gt_500000
FROM orders
GROUP BY category
HAVING SUM(total_price) > 500000
ORDER BY revenue_gt_500000 DESC;


#Average Quantity Purchased by Category
SELECT
    category,
    ROUND(AVG(qty),2) AS average_quantity
FROM orders
GROUP BY category
ORDER BY average_quantity DESC;

#Countries with More Than 900 Orders
SELECT
    country,
    COUNT(*) AS total_orders
FROM orders
GROUP BY country
HAVING COUNT(*) > 900
ORDER BY total_orders DESC;
    

    
	
