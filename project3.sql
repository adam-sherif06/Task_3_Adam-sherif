-- Display all records
SELECT *
FROM [Dataset for Data Analytics (2)];

-- First 10 rows
SELECT TOP 10 *
FROM [Dataset for Data Analytics (2)];

-- Total number of orders
SELECT COUNT(*) AS TotalOrders
FROM [Dataset for Data Analytics (2)];

-- Total revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM [Dataset for Data Analytics (2)];

-- Average order value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM [Dataset for Data Analytics (2)];

-- Orders by status
SELECT OrderStatus,
       COUNT(*) AS OrdersCount
FROM [Dataset for Data Analytics (2)]
GROUP BY OrderStatus;

-- Orders by payment method
SELECT PaymentMethod,
       COUNT(*) AS OrdersCount
FROM [Dataset for Data Analytics (2)]
GROUP BY PaymentMethod;

-- Revenue by payment method
SELECT PaymentMethod,
       SUM(TotalPrice) AS TotalRevenue
FROM [Dataset for Data Analytics (2)]
GROUP BY PaymentMethod;

-- Product sales
SELECT Product,
       SUM(TotalPrice) AS TotalSales
FROM [Dataset for Data Analytics (2)]
GROUP BY Product
ORDER BY TotalSales DESC;

-- Product quantities
SELECT Product,
       SUM(Quantity) AS TotalQuantity
FROM [Dataset for Data Analytics (2)]
GROUP BY Product
ORDER BY TotalQuantity DESC;

-- Referral source analysis
SELECT ReferralSource,
       COUNT(*) AS TotalOrders
FROM [Dataset for Data Analytics (2)]
GROUP BY ReferralSource
ORDER BY TotalOrders DESC;

-- Top 10 highest orders
SELECT TOP 10 *
FROM [Dataset for Data Analytics (2)]
ORDER BY TotalPrice DESC;