SELECT
    c.Customer_Name,
    SUM(o.Sales) AS Total_Revenue
FROM orders o
JOIN customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 5;