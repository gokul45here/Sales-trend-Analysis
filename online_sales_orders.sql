SELECT * FROM sales.online_sales_orders;

----View Orders from a Specific Date----

SELECT * FROM sales.online_sales_orders
WHERE order_date = '2024-12-06';

***Find Orders for a Specific Product***

SELECT * FROM sales.online_sales_orders
WHERE product_id = 'PROD10';

//Orders with Amount Greater Than ₹300

SELECT * FROM sales.online_sales_orders
WHERE amount > 300;

// Orders by a Specific Customer

SELECT * FROM sales.online_sales_orders
WHERE customer_id = 'CUST50';

//List All Unique Categories

SELECT DISTINCT category FROM sales.online_sales_orders;

// Count Orders by Payment Method

SELECT payment_method, COUNT(*) AS total_orders
FROM sales.online_sales_orders
GROUP BY payment_method;

// Filter Only Completed Orders

SELECT * FROM sales.online_sales_orders
WHERE status = 'Completed';


// Count Total Orders by Status

SELECT status, COUNT(*) AS count
FROM sales.online_sales_orders
GROUP BY status;

// Monthly Revenue and Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales.online_sales_orders
GROUP BY year, month
ORDER BY year ASC, month ASC;

// Top 3 Months by Sales

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM sales.online_sales_orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;


// Monthly Revenue by Category

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    category,
    SUM(amount) AS category_revenue
FROM sales.online_sales_orders
GROUP BY year, month, category
ORDER BY year, month, category;

// Order Volume by Payment Method

SELECT
    payment_method,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales.online_sales_orders
GROUP BY payment_method
ORDER BY total_orders DESC;

// Completed Orders Monthly Trend

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS completed_orders
FROM sales.online_sales_orders
WHERE status = 'Completed'
GROUP BY year, month
ORDER BY year ASC, month ASC;
