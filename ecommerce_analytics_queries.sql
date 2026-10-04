

-- ============================================
-- E-Commerce Customer Analytics
-- SQL Analysis
-- ============================================

-- 1. Total Revenue
SELECT
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM online_retail;


-- 2. Total Orders
SELECT
    COUNT(DISTINCT Invoice) AS Total_Orders
FROM online_retail;


-- 3. Total Customers
SELECT
    COUNT(DISTINCT "Customer ID") AS Total_Customers
FROM online_retail;


-- 4. Total Quantity
SELECT
    SUM(Quantity) AS Total_Quantity
FROM online_retail;


-- 5. Top 10 Customers by Revenue
SELECT
    "Customer ID",
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM online_retail
GROUP BY "Customer ID"
ORDER BY Total_Revenue DESC
LIMIT 10;


-- 6. Revenue by Country
SELECT
    Country,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC;


-- 7. Monthly Revenue
SELECT
    strftime('%Y-%m', InvoiceDate) AS Month,
    ROUND(SUM(Total_Sales), 2) AS Monthly_Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;


-- 8. Customer Order Frequency
SELECT
    "Customer ID",
    COUNT(DISTINCT Invoice) AS Total_Orders
FROM online_retail
GROUP BY "Customer ID"
ORDER BY Total_Orders DESC
LIMIT 10;


-- 9. High-Value Customers
SELECT
    "Customer ID",
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
    COUNT(DISTINCT Invoice) AS Total_Orders
FROM online_retail
GROUP BY "Customer ID"
HAVING SUM(Total_Sales) > 10000
ORDER BY Total_Revenue DESC;


-- 10. Yearly Revenue
SELECT
    Year,
    ROUND(SUM(Total_Sales), 2) AS Yearly_Revenue
FROM online_retail
GROUP BY Year
ORDER BY Year;


-- 11. Average Order Value
SELECT
    ROUND(
        SUM(Total_Sales) * 1.0 / COUNT(DISTINCT Invoice),
        2
    ) AS Average_Order_Value
FROM online_retail;

