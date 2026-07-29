-- SELECT COUNT(*) AS total_records FROM orders;

-- SELECT * FROM orders
-- LIMIT 10;

-- DESCRIBE orders;

SELECT
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM orders;
