CREATE TABLE project4 (
    OrderID VARCHAR,
    Date VARCHAR,
    CustomerID VARCHAR,
    Product VARCHAR,
    Quantity VARCHAR,
    UnitPrice VARCHAR,
    ShippingAddress VARCHAR,
    PaymentMethod VARCHAR,
    OrderStatus VARCHAR,
    TrackingNumber VARCHAR,
    ItemsInCart VARCHAR,
    CouponCode VARCHAR,
    ReferralSource VARCHAR,
    TotalPrice VARCHAR
    );

SELECT * FROM project4
LIMIT 30;

COPY project4
FROM 'C:/Users/Public/project4.csv'
DELIMITER ','
CSV HEADER;

SELECT * 
FROM project4;

-- This shows every column from the table-- 

SELECT orderID, product, quantity, TotalPrice
FROM project4;

---Shows only the orderID, product, quantity, TotalPrice from the table--


ALTER TABLE project4
ALTER COLUMN TotalPrice TYPE NUMERIC USING TotalPrice::Numeric;

SELECT * 
FROM project4
WHERE quantity >= 4;

--The WHERE clause filters the data--

SELECT * 
FROM project4
ORDER BY TotalPrice DESC;

SELECT * 
FROM project4
ORDER BY TotalPrice ASC;

--The ORDER BY  arranges the data in a particular order--

SELECT COUNT(*) AS TotalOrders
FROM project4; 

--The COUNT clause helps you count the number of orders--

SELECT SUM(TotalPrice) AS TotalRevenue FROM project4;

--The SUM calculate the Total revenue--

SELECT AVG(TotalPrice) AS AverageValue 
FROM project4;

--This calculates the Average of the toal revenue--

SELECT product,
        SUM(TotalPrice) AS REVENUE
        FROM project4
        GROUP BY product
        ORDER BY Revenue DESC;

--This tells you to group the orders by product, calculate the total revenue for each product then arrange in descending order--

UPDATE project4
SET couponcode = 'NoCoupon'
WHERE couponcode = '0';

SELECT * 
FROM project4;