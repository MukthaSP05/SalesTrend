use salesTrend;
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    product_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);


INSERT INTO orders (order_date, product_id, amount) VALUES
('2023-01-05', 101, 250.50),
('2023-01-15', 102, 120.00),
('2023-02-03', 103, 310.75),
('2023-02-10', 101, 150.00),
('2023-03-01', 104, 500.00),
('2023-03-12', 102, 200.00),
('2023-03-20', 103, 450.00),
('2023-04-05', 101, 300.00),
('2023-04-18', 104, 320.30);



SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,   -- Year-Month format for easy visualization
    SUM(amount) AS monthly_revenue,              -- Total revenue per month
    COUNT(DISTINCT order_id) AS order_volume     -- Number of unique orders per month
FROM
    orders
-- Optional: filter for specific years
-- WHERE order_date >= '2023-01-01' AND order_date < '2025-01-01'
GROUP BY
    month
ORDER BY
    month;
