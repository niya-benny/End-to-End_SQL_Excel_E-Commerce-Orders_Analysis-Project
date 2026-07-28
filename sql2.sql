CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    qty INT,
    total_price DECIMAL(10,2),
    order_date DATETIME,
    country VARCHAR(100),
    customer_segment VARCHAR(30),
    Year INT,
    Month_name VARCHAR(20),
    Month_number INT,
    Day_of_week VARCHAR(20),
    Hour INT
);