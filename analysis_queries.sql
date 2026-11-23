-- E-Commerce Customer Behavior & Retention Analysis
-- SQL Server (T-SQL). Import CSV into dbo.EcommerceOrders first.

-- 1. Preview records
SELECT TOP (20) * FROM dbo.EcommerceOrders;

-- 2. Total sales and completed order count
SELECT
    SUM(NetSales) AS TotalNetRevenue,
    COUNT(CASE WHEN OrderStatus = 'Completed' THEN 1 END) AS CompletedOrders,
    COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM dbo.EcommerceOrders;

-- 3. Monthly revenue trend
SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(NetSales) AS MonthlyNetRevenue,
    COUNT(*) AS OrderRows
FROM dbo.EcommerceOrders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY SalesYear, SalesMonth;

-- 4. Category performance
SELECT Category, SUM(NetSales) AS Revenue, SUM(Quantity) AS UnitsSold
FROM dbo.EcommerceOrders
GROUP BY Category
ORDER BY Revenue DESC;

-- 5. Repeat-purchase customers
WITH CustomerOrders AS (
    SELECT CustomerID, COUNT(DISTINCT OrderID) AS OrderCount,
           SUM(NetSales) AS CustomerRevenue
    FROM dbo.EcommerceOrders
    WHERE OrderStatus = 'Completed'
    GROUP BY CustomerID
)
SELECT
    COUNT(*) AS CompletedCustomers,
    COUNT(CASE WHEN OrderCount >= 2 THEN 1 END) AS RepeatCustomers,
    CAST(100.0 * COUNT(CASE WHEN OrderCount >= 2 THEN 1 END) / NULLIF(COUNT(*),0)
         AS DECIMAL(5,2)) AS RepeatCustomerRatePct
FROM CustomerOrders;

-- 6. Top 10 products by net revenue
SELECT TOP (10) Product, Category, SUM(NetSales) AS NetRevenue
FROM dbo.EcommerceOrders
GROUP BY Product, Category
ORDER BY NetRevenue DESC;

-- 7. Return rate
SELECT
    COUNT(*) AS TotalOrders,
    COUNT(CASE WHEN OrderStatus = 'Returned' THEN 1 END) AS ReturnedOrders,
    CAST(100.0 * COUNT(CASE WHEN OrderStatus = 'Returned' THEN 1 END) / NULLIF(COUNT(*),0)
         AS DECIMAL(5,2)) AS ReturnRatePct
FROM dbo.EcommerceOrders;

-- 8. Revenue by region and payment method
SELECT Region, PaymentMethod, SUM(NetSales) AS NetRevenue, COUNT(*) AS Orders
FROM dbo.EcommerceOrders
GROUP BY Region, PaymentMethod
ORDER BY NetRevenue DESC;
