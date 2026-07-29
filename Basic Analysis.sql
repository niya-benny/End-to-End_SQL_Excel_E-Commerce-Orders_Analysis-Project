#total revenue
SELECT SUM(total_price) AS total_revenue
FROM orders;

#total no. of orders
SELECT COUNT(*) AS total_orders
FROM orders;

#avg order(on avg how much does a customer spend per order)
SELECT ROUND(AVG(total_price),2) AS average_order_value
FROM orders;

#Revenue by category
SELECT
    category,
    ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;

#orders by customer segment
SELECT
    customer_segment,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_segment
ORDER BY total_orders DESC;

#revenue by customer segment
SELECT
    customer_segment,
    ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY customer_segment
ORDER BY revenue DESC;

#revenue by country
SELECT
    country,
    ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY country
ORDER BY revenue DESC;

#Top 10 most expensive products sold
SELECT
    product_id,
    category,
    price
FROM orders
ORDER BY price DESC
LIMIT 10;
