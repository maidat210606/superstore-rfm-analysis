USE SuperstoreDB;

-- 1. Tổng quan dataset
SELECT 
    COUNT(*)                      AS total_rows,
    COUNT(DISTINCT Order_ID)      AS total_orders,
    COUNT(DISTINCT Customer_ID)   AS total_customers,
    COUNT(DISTINCT Product_ID)    AS total_products
FROM orders;

-- 2. Top 10 sản phẩm doanh thu cao nhất
SELECT TOP 10
    Product_Name,
    ROUND(SUM(Sales), 2)   AS total_sales,
    ROUND(SUM(Profit), 2)  AS total_profit
FROM orders
GROUP BY Product_Name
ORDER BY total_sales DESC;

-- 3. Top 10 khách hàng chi tiêu nhiều nhất
SELECT TOP 10
    Customer_ID,
    Customer_Name,
    ROUND(SUM(Sales), 2) AS total_spent
FROM orders
GROUP BY Customer_ID, Customer_Name
ORDER BY total_spent DESC;

-- 4. Doanh thu theo tháng
SELECT 
    YEAR(Order_Date)   AS year,
    MONTH(Order_Date)  AS month,
    ROUND(SUM(Sales), 2)       AS monthly_sales,
    COUNT(DISTINCT Order_ID)   AS num_orders
FROM orders
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY year, month;

-- 5. Doanh thu theo Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2)   AS total_sales,
    ROUND(SUM(Profit), 2)  AS total_profit,
    COUNT(DISTINCT Order_ID) AS num_orders
FROM orders
GROUP BY Category
ORDER BY total_sales DESC;

-- 6. Doanh thu theo Region
SELECT 
    Region,
    ROUND(SUM(Sales), 2)   AS total_sales,
    ROUND(SUM(Profit), 2)  AS total_profit
FROM orders
GROUP BY Region
ORDER BY total_sales DESC;