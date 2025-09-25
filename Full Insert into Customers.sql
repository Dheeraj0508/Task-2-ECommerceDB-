-- Full Insert into Customers
INSERT INTO Customers (First_Name, Last_Name, Contact, Country, City) VALUES
('Amit', 'Sharma', '9876543210', 'India', 'Indore'),
('Priya', 'Mehta', '9988776655', 'India', 'Mumbai');

-- Insert with NULL handling (email/phone missing → Contact is required, so use dummy)
INSERT INTO Customers (First_Name, Last_Name, Contact, Country, City) VALUES
('John', 'Doe', '0000000000', 'UK', 'London');  -- missing phone handled with default dummy value

-- Insert into Products
INSERT INTO Products (Product_Name, Price, Stock) VALUES
('Laptop', 60000.00, 10),
('Smartphone', 30000.00, 25),
('Headphones', 2000.00, 50);

-- Insert into Orders
INSERT INTO Orders (Customer_ID, Order_Date) VALUES
(1, '2025-09-22'),
(2, '2025-09-21');

-- Insert into OrderDetails
INSERT INTO OrderDetails (Order_ID, Product_ID, Quantity) VALUES
(1, 1, 1),   -- Amit bought 1 Laptop
(1, 3, 2),   -- Amit bought 2 Headphones
(2, 2, 1);   -- Priya bought 1 Smartphone

-- ===========================
-- UPDATE Examples
-- ===========================

-- Update a single customer's city
UPDATE Customers
SET City = 'Pune'
WHERE Customer_ID = 1;

-- Update stock after purchase (reduce stock)
UPDATE Products
SET Stock = Stock - 2
WHERE Product_ID = 3;  -- Headphones reduced by 2

-- Update multiple rows (increase price for all items by 10%)
UPDATE Products
SET Price = Price * 1.10;

-- ===========================
-- DELETE Examples
-- ===========================

-- Delete a specific order detail
DELETE FROM OrderDetails
WHERE OrderDetail_ID = 3;

-- Delete a customer (but only if no orders exist)
DELETE FROM Customers
WHERE Customer_ID = 3;

-- ===========================
-- SELECT Final Data (for checking)
-- ===========================
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;