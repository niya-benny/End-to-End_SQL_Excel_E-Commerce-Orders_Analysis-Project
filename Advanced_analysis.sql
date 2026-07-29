#Top 5 Customers by Revenue
SELECT
    user_id,
    ROUND(SUM(total_price), 2) AS total_spent
FROM orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 5;

#Rank Categories by Revenue
SELECT
    category,
    ROUND(SUM(total_price),2) AS revenue,
    RANK() OVER (ORDER BY SUM(total_price) DESC) AS revenue_rank
FROM orders
GROUP BY category;

#Dense Ranking
SELECT
    category,
    ROUND(SUM(total_price),2) AS revenue,
    DENSE_RANK() OVER (ORDER BY SUM(total_price) DESC) AS category_dense_rank
FROM orders
GROUP BY category;

#Running Total of Revenue by Date
SELECT
    DATE(order_date) AS order_day,
    SUM(total_price) AS daily_revenue,
    SUM(SUM(total_price)) OVER (
        ORDER BY DATE(order_date)
    ) AS running_total
FROM orders
GROUP BY DATE(order_date)
ORDER BY order_day;

#Categorize Orders Using CASE
SELECT
    order_id,
    total_price,
    CASE
        WHEN total_price >= 500 THEN 'High Value'
        WHEN total_price >= 200 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_type
FROM orders;

#Customers Spending Above Average
SELECT
    user_id,
    ROUND(SUM(total_price),2) AS total_spent
FROM orders
GROUP BY user_id
HAVING SUM(total_price) >
(
    SELECT AVG(customer_total)
    FROM
    (
        SELECT SUM(total_price) AS customer_total
        FROM orders
        GROUP BY user_id
    ) AS customer_spending
);

#Top Category Within Each Country
WITH category_sales AS (
    SELECT
        country,
        category,
        SUM(total_price) AS revenue,
        RANK() OVER (
            PARTITION BY country
            ORDER BY SUM(total_price) DESC
        ) AS category_rank
    FROM orders
    GROUP BY country, category
)

SELECT
    country,
    category,
    revenue
FROM category_sales
WHERE category_rank = 1;

#Monthly Revenue Growth
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(total_price),2) AS monthly_revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;