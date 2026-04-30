USE SuperstoreDB;

-- 1. Kiểm tra NULL
SELECT 
    SUM(CASE WHEN Order_ID    IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN Product_ID  IS NULL THEN 1 ELSE 0 END) AS null_product_id,
    SUM(CASE WHEN Order_Date  IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN Sales       IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN Quantity    IS NULL THEN 1 ELSE 0 END) AS null_quantity,
    SUM(CASE WHEN Profit      IS NULL THEN 1 ELSE 0 END) AS null_profit
FROM orders;

-- 2. Kiểm tra duplicate
SELECT Order_ID, Product_ID, COUNT(*) AS cnt
FROM orders
GROUP BY Order_ID, Product_ID
HAVING COUNT(*) > 1;

-- 3. Kiểm tra giá trị bất thường
SELECT 
    MIN(Sales)      AS min_sales,
    MAX(Sales)      AS max_sales,
    MIN(Profit)     AS min_profit,
    MAX(Profit)     AS max_profit,
    MIN(Order_Date) AS earliest_order,
    MAX(Order_Date) AS latest_order
FROM orders;

-- 4. Kiểm tra Sales âm
SELECT 
    COUNT(*) AS so_don_sales_am,
    CASE 
        WHEN COUNT(*) = 0 THEN N'Không có Sales âm '
        ELSE N'⚠️ Có ' + CAST(COUNT(*) AS VARCHAR) + N' đơn hàng Sales âm!'
    END AS ket_qua
FROM orders 
WHERE Sales <= 0;

-- 5. Xem toàn bộ dữ liệu
SELECT TOP 20 * FROM orders;