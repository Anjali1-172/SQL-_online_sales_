
-- SQL Script to calculate monthly revenue and volume from the 'online_sales' dataset
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS volume
FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
