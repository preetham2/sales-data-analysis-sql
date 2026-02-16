-- Total Sales
SELECT SUM(Sales) AS total_sales
FROM Superstore;

-- Sales by Category
SELECT Category, SUM(Sales) AS category_sales
FROM Superstore
GROUP BY Category
ORDER BY category_sales DESC;

-- Profit by Region
SELECT Region, SUM(Profit) AS total_profit
FROM Superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- Top Selling Subcategory
SELECT SubCategory, SUM(Sales) AS sales
FROM Superstore
GROUP BY SubCategory
ORDER BY sales DESC
LIMIT 5;

-- Average Order Value
SELECT AVG(Sales) AS avg_order_value
FROM Superstore;

-- Quantity Sold by Category
SELECT Category, SUM(Quantity) AS total_quantity
FROM Superstore
GROUP BY Category;

-- Monthly Sales Trend
SELECT 
    strftime('%Y-%m', OrderDate) AS month,
    SUM(Sales) AS monthly_sales
FROM Superstore
GROUP BY month
ORDER BY month;
