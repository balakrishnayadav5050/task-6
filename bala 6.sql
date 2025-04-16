SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(price) AS total_revenue,
    COUNT(DISTINCT product_id) AS order_volume
FROM 
    online_sales.synthetic_online_retail_data
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
