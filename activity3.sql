CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 60000.00),
(2, 'Smartphone', 20000.00),
(3, 'Tablet', 15000.00),
(4, 'Monitor', 12000.00),
(5, 'Keyboard', 1000.00);

SELECT ProductName, Price
FROM Products
WHERE Price = (SELECT MIN(Price) FROM Products);

SELECT ProductName, Price
FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
