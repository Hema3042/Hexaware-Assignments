SELECT * From Customers
SELECT * FROM Products
SELECT *FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Inventory
SELECT * FROM Category

CREATE TABLE Customers(CustomerID int Primary Key, FirstName varchar(20), LastName varchar(20), Email nchar(50), Phone bigint, Addrs nchar(60))
CREATE TABLE Products(ProductID int Primary Key, ProductName varchar(30), Descript varchar(50),CategoryID int references Category(CategoryID), Price float)
CREATE TABLE OrderDetails(OrderDetailID int Primary key, OrderID int references Orders(OrderID), ProductID int references Products(ProductID), Quantity int)
CREATE TABLE Inventory(InventoryID int Primary key, ProductID int references Products(ProductID), QuantityInStock int, LastStockUpdate date)
CREATE TABLE Category(CategoryID int Primary key, Category varchar(40))


INSERT into Customers values(3001, 'Aadhi', 'Sesan', 'aadhisesan01@gmail.com', 8610293008, 'Chennai')
INSERT into Customers values(3002, 'Alex', 'Carson', 'alexcarsonx@gmail.com', 9610790328, 'Pune')
INSERT into Customers values(3003, 'John', 'Hardey', 'johnhardey19@gmail.com', 9678408301, 'Kashmir')
INSERT into Customers values(3004, 'Pranav', 'Karthi', 'pranavkarthi03@gmail.com', 8056393008, 'Mumbai')
INSERT into Customers values(3005, 'Harshad', 'Pandey', 'harshadpandey@gmail.com', 9300886102, 'Bangalore')
INSERT into Customers values(3006, 'William', 'George', 'williamgeorge@gmail.com', 8907654321, 'Delhi')
INSERT into Customers values(3007, 'Jackson', 'Paul', 'jacksonpaul@gmail.com', 9807654321, 'Mumbai')
INSERT into Customers values(3008, 'Wilson', 'Elliot', 'wilsonelliot@gmail.com', 9807654321, 'Chennai')
INSERT into Customers values(3009, 'James', 'Smith', 'jamessmith@gmail.com', 7654321980, 'Bangalore')
INSERT into Customers values(3010, 'Sarah', 'Jones', 'sarahjonessarah@gmail.com', 9432180765, 'Kashmir')
INSERT into Customers values(3011, 'Mohammed', 'Riyas', 'mohammedriyas@gmail.com', 8076543921, 'Delhi')

INSERT into Category values(1,'Electronic Gadget')
INSERT into Category values(2, 'Home Appliances')
INSERT into Category values(3, 'Furniture')

INSERT into Products values(6001, 'Headphones', 'Oppo Enco M32',1, 360.0)
INSERT into Products values(6002, 'Smartphone', 'Samsung Galaxy A14',1, 45000.0)
INSERT into Products values(6003, 'Smart Watch', 'Samsung Galaxy Classic',1, 1500.0)
INSERT into Products values(6004, 'Laptops', 'Aspire3 ACER',1, 55000.0)
INSERT into Products values(6005, 'Cameras', 'Sony Digital ZV1',1, 2500.0)
INSERT into Products values(6006, 'Air Conditioner', 'LG Dual Inverter Split',2, 49000.0)
INSERT into Products values(6007, 'Refrigirator', 'Godrej EDGENEO Aqua wine',2, 69000.0)
INSERT into Products values(6008, 'Washing Machine', 'Whirlpool Top loading',2, 12000.0)
INSERT into Products values(6009, 'Water Heater', 'Crypton Arno Neo',2, 6000.0)
INSERT into Products values(6010, 'Chair', 'Ergo Smart Office chair',3, 1200.0)
INSERT into Products values(6011, 'Table', 'Space crafts wooden table',3, 3000.0)
INSERT into Products values(6012, 'Sofa', 'Home centre emily polyster',3, 30000.0)
INSERT into Products values(6013, 'Cupboard', 'JD fresh 4 unit plastic cupboard',3, 2500.0)


INSERT into Orders values(5001,3004,'2024-05-03',2500.0)
INSERT into Orders values(5002,3005,'2024-04-20',45000.0)
INSERT into Orders values(5003,3001,'2024-05-12',360.0)
INSERT into Orders values(5004,3002,'2024-04-10',1200.0)
INSERT into Orders values(5005,3009,'2024-04-11',6000.0)
INSERT into Orders values(5006,3003,'2024-05-12',1500.0)
INSERT into Orders values(5007,3007,'2024-06-21',2500.0)
INSERT into Orders values(5008,3011,'2024-05-23',55000.0)
INSERT into Orders values(5009,3006,'2024-04-30',69000.0)
INSERT into Orders values(5010,3008,'2024-04-24',49000.0)
INSERT into Orders values(5011,3003,'2024-05-11',1500.0)
INSERT into Orders values(5012,3001,'2024-04-19',6000.0)
INSERT into Orders values(5013,3011,'2024-05-20',30000.0)
INSERT into Orders values(5014,3003,'2024-05-22',6000.0)
INSERT into Orders values(5015,3005,'2024-05-29',55000.0)


INSERT into OrderDetails values(5101,5001,6005,1)
INSERT into OrderDetails values(5102,5002,6002,1)
INSERT into OrderDetails values(5103,5003,6001,1)
INSERT into OrderDetails values(5104,5004,6010,1)
INSERT into OrderDetails values(5105,5005,6009,1)
INSERT into OrderDetails values(5106,5006,6003,1)
INSERT into OrderDetails values(5107,5007,6005,1)
INSERT into OrderDetails values(5108,5008,6004,1)
INSERT into OrderDetails values(5109,5009,6007,1)
INSERT into OrderDetails values(5110,5010,6006,1)
INSERT into OrderDetails values(5111,5011,6003,1)
INSERT into OrderDetails values(5112,5012,6009,1)
INSERT into OrderDetails values(5113,5013,6011,1)
INSERT into OrderDetails values(5114,5014,6009,1)
INSERT into OrderDetails values(5115,5015,6004,1)


INSERT into Inventory values(9001,6001,5,'2024-01-01')
INSERT into Inventory values(9002,6002,5,'2024-01-01')
INSERT into Inventory values(9003,6003,5,'2024-01-01')
INSERT into Inventory values(9004,6004,5,'2024-01-01')
INSERT into Inventory values(9005,6005,5,'2024-01-01')
INSERT into Inventory values(9006,6006,5,'2024-01-01')
INSERT into Inventory values(9007,6007,5,'2024-01-01')
INSERT into Inventory values(9008,6008,5,'2024-01-01')
INSERT into Inventory values(9009,6009,5,'2024-01-01')
INSERT into Inventory values(9010,6010,5,'2024-01-01')
INSERT into Inventory values(9011,6011,5,'2024-01-01')
INSERT into Inventory values(9012,6012,5,'2024-01-01')
INSERT into Inventory values(9013,6013,5,'2024-01-01')


--Task2

SELECT * From Customers
SELECT * FROM Products
SELECT *FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Inventory
SELECT * FROM Category

<!--1. Write an SQL query to retrieve the names and emails of all customers. 

SELECT FirstName, LastName, Email From Customers

<!--2. Write an SQL query to list all orders with their order dates and corresponding customer names.

SELECT
	Customers.FirstName, Customers.LastName, Products.ProductName, Orders.OrderDate 
From 
	Customers
Inner Join
	Orders on Customers.CustomerID=Orders.CustomerID
Inner Join
	OrderDetails on OrderDetails.OrderID=Orders.OrderID
Inner Join 
	Products on OrderDetails.ProductID=Products.ProductID

<!--3. Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.

INSERT into Customers values(3012, 'Michael', 'Jamson', 'michaeljamson@gmsil.com',9805674123,'Kanpur')

<!--4. Write an SQL query to update the prices of all electronic gadgets in the "Products" table by increasing them by 10%

SELECT * FROM Products UPDATE Products SET Price=Price+(Price*0.1)

<!--5. Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter

DECLARE @inpCustomerID int
SET @inpCustomerID=3006
DELETE FROM OrderDetails WHERE OrderID =(SELECT OrderID FROM Orders WHERE CustomerID=@inpCustomerID)
DELETE FROM Orders WHERE CustomerID=@inpCustomerID

<!--6. Write an SQL query to insert a new order into the "Orders" table. Include the customer ID, order date, and any other necessary information.


INSERT into Orders values(5016,3012,'2024-05-30',45000)

<!--7. Write an SQL query to update the contact information (e.g., email and address) of a specific customer in the "Customers" table. Allow users to input the customer ID and new contact information.

DECLARE @inpemail nchar(45)
DECLARE @inpCustomerID int
Declare @inpphn bigint
SET @inpemail='kannan24@gmail.com'
SET @inpCustomerID=3003
SET @inpphn=9074832175
Update Customers SET Email=@inpemail,Phone=@inpphn WHERE CustomerID=@inpCustomerID


<!--8. Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table

UPDATE Orders SET TotalAmt=(SELECT sum(od.Quantity*p.Price) FROM OrderDetails od
INNER JOIN
	Products p on od.ProductID=p.ProductID
WHERE
	od.OrderID=Orders.OrderID)

<!--9. Write an SQL query to delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter.

DECLARE @inpCustomID int
SET @inpCustomID=3006
DELETE FROM OrderDetails WHERE OrderID =(SELECT OrderID FROM Orders WHERE CustomerID=@inpCustomID)
DELETE FROM Orders WHERE CustomerID=@inpCustomID


<!--10. Write an SQL query to insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant details.

Insert into Products values(6014,'Speaker', 'Electronic Gadget', 5000)

<!--11. Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped"). Allow users to input the order ID and the new status.

Alter TABLE Orders ADD StatusOfOrder varchar(20)
DECLARE @inpSts varchar(20)
DECLARE @inpOrderID int
SET @inpSts = 'Shipped'
SET @inpOrderID=5001
UPDATE Orders SET StatusOfOrder=@inpSts where OrderID=@inpOrderID

<!--12. Write an SQL query to calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table

SELECT c.FirstName,COUNT(*) as TotalOrders FROM Orders o INNER JOIN Customers c
on c.CustomerID=o.CustomerID
Group BY c.CustomerID,c.FirstName



--Task3

SELECT * From Customers
SELECT * FROM Products
SELECT *FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Inventory
SELECT * FROM Category

<!--1. Write an SQL query to retrieve a list of all orders along with customer information (e.g., customer name) for each order.

SELECT
	Customers.FirstName, Customers.LastName, Products.ProductName 
From 
	Customers
Inner Join
	Orders on Customers.CustomerID=Orders.CustomerID
Inner Join
	OrderDetails on OrderDetails.OrderID=Orders.OrderID
Inner Join 
	Products on OrderDetails.ProductID=Products.ProductID

<!--2. Write an SQL query to find the total revenue generated by each electronic gadget product. Include the product name and the total revenue

SELECT DISTINCT(Products.ProductName), SUM(OrderDetails.Quantity*Products.Price) as TotalRevenue
From
	Products
INNER JOIN 
	OrderDetails on Products.ProductID=OrderDetails.ProductID
WHERE Products.CategoryID IN (SELECT CategoryID FROM Category WHERE Category='Electronic Gadget')
GROUP BY
	Products.ProductName

<!--3. Write an SQL query to list all customers who have made at least one purchase. Include their names and contact information

SELECT
	Customers.FirstName, Customers.LastName, Customers.Email, Customers.Phone, Products.ProductName
From 
	Customers
Inner Join
	Orders on Customers.CustomerID=Orders.CustomerID
Inner Join
	OrderDetails on OrderDetails.OrderID=Orders.OrderID
Inner Join 
	Products on OrderDetails.ProductID=Products.ProductID
WHERE OrderDetails.Quantity>0

<!--4. Write an SQL query to find the most popular electronic gadget, which is the one with the highest total quantity ordered. Include the product name and the total quantity ordered.

SELECT DISTINCT(Products.ProductName),Category.Category FROM Products INNER JOIN Category on Products.CategoryID=Category.CategoryID WHERE Category='Electronic Gadget'

<!--5. Write an SQL query to retrieve a list of electronic gadgets along with their corresponding categories.

SELECT Products.ProductName, Category.Category FROM Products INNER Join Category on Category.CategoryID=Products.CategoryID

<!--6. Write an SQL query to calculate the average order value for each customer. Include the customer's name and their average order value

SELECT Customers.FirstName, Customers.LastName, AVG(Orders.TotalAmt) AS AverageOrderValue
FROM
	Customers
INNER JOIN
	Orders on Customers.CustomerID=Orders.CustomerID
GROUP BY 
	Customers.CustomerID, Customers.FirstName, Customers.LastName

<!--7. Write an SQL query to find the order with the highest total revenue. Include the order ID, customer information, and the total revenue

SELECT TOP 1 O.OrderID, C.FirstName, C.LastName, C.Phone, C.Email, C.Addrs, SUM(P.Price*OD.Quantity) AS TotalRevenue
FROM
	Orders O
INNER JOIN 
	Customers C on O.CustomerID=C.CustomerID
INNER JOIN 
	OrderDetails OD on OD.OrderID=O.OrderID
INNER JOIN 
	Products P on P.ProductID=OD.ProductID
Group By 
	O.OrderID, C.FirstName, C.LastName, C.Phone, C.Email, C.Addrs
Order By
	SUM(P.Price*OD.Quantity) DESC

<!--8. Write an SQL query to list electronic gadgets and the number of times each product has been ordered.

SELECT DISTINCT(P.ProductName), COUNT(OD.OrderID) AS OrderCount
FROM 
	Products P
INNER JOIN 
	OrderDetails OD on P.ProductID=OD.ProductID
Group By P.ProductName

<!--9. Write an SQL query to find customers who have purchased a specific electronic gadget product. Allow users to input the product name as a parameter.

DECLARE @inpProductName varchar(50)
SET @inpProductName='Laptops'
SELECT C.FirstName,C.LastName,P.ProductName,P.CategoryID
FROM
	Customers C
INNER JOIN 
	Orders O on C.CustomerID=O.CustomerID
INNER JOIN 
	OrderDetails OD on O.OrderID=OD.OrderID
INNER JOIN
	Products P on P.ProductID=OD.ProductID
WHERE P.ProductName=@inpProductName
 
<!--10. Write an SQL query to calculate the total revenue generated by all orders placed within a specific time period. Allow users to input the start and end dates as parameters

DECLARE @inpStartDate date
DECLARE @inpEndDate date
SET @inpStartDate='2024-01-01'
SET @inpEndDate='2024-05-10'
SELECT SUM(P.Price*OD.Quantity) as TotalRevenue
FROM 
	Orders O
INNER JOIN 
	Customers C on O.CustomerID=C.CustomerID
INNER JOIN 
	OrderDetails OD on OD.OrderID=O.OrderID
INNER JOIN 
	Products P on P.ProductID=OD.ProductID
WHERE 
	O.OrderDate Between @inpStartDate and @inpEndDate

--Task 4

SELECT * From Customers
SELECT * FROM Products
SELECT * FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Inventory
SELECT * FROM Category

<!--1. Write an SQL query to find out which customers have not placed any orders.

SELECT C.CustomerID, C.FirstName,C.Lastname FROM Customers c
WHERE C.CustomerID NOT IN (SELECT O.CustomerID
FROM Orders O)

<!--2. Write an SQL query to find the total number of products available for sale.

SELECT  COUNT(ProductID) As AvailableProducts FROM Products WHERE ProductID IN (SELECT ProductID FROM Inventory Where QuantityInStock>0)

<!--3. Write an SQL query to calculate the total revenue generated by TechShop.

SELECT SUM(O.TotalAmt * OD.Quantity) AS TotalRevenue FROM Orders O INNER JOIN OrderDetails OD on O.OrderID=OD.OrderID

<!--4. Write an SQL query to calculate the average quantity ordered for products in a specific category. Allow users to input the category name as a parameter.

DECLARE @inpCatogoryName varchar(20)
SET @inpCatogoryName='Furniture'
SELECT avg(Quantity) AvgOrders from OrderDetails where ProductID
IN (select P.ProductID from Products P
INNER JOIN Category C on P.CategoryID=C.CategoryID
where C.Category=@inpCatogoryName)

<!--5. Write an SQL query to calculate the total revenue generated by a specific customer. Allow users to input the customer ID as a parameter.

DECLARE @inpCustomerID int
SET @inpCustomerID=3001
SELECT SUM(OD.Quantity* P.Price) as TotalRevenue FROM OrderDetails OD 
INNER JOIN Products P on OD.ProductID=P.ProductID
WHERE od.OrderID IN(SELECT O.OrderID FROM Orders O INNER JOIN Customers C
on O.CustomerID=C.CustomerID WHERE C.CustomerID=@inpCustomerID)

<!--6. Write an SQL query to find the customers who have placed the most orders. List their names and the number of orders they've placed.

SELECT C.FirstName, COUNT(C.CustomerID) As TotalOrders FROM Customers C INNER JOIN Orders O on C.CustomerID=O.CustomerID
GROUP BY C.FirstName HAVING COUNT(C.CustomerID) = (SELECT Top 1 COUNT(C.CustomerID) As TotalOrders FROM Customers C INNER JOIN Orders O on C.CustomerID=O.CustomerID
GROUP BY C.FirstName ORDER BY TotalOrders DESC)

<!--7. Write an SQL query to find the most popular product category, which is the one with the highest total quantity ordered across all orders.

SELECT Ct.Category From Category Ct INNER JOIN Products P on Ct.CategoryID=P.CategoryID WHERE P.ProductID=(SELECT ProductID FROM OrderDetails OD Group By ProductID Having Count(OrderID)=
(SELECT Top 1 Count(OrderID) AS numOfOrders FROM OrderDetails Group BY ProductID Order BY numOfOrders DESC))

<!--8. Write an SQL query to find the customer who has spent the most money (highest total revenue) on electronic gadgets. List their name and total spending

SELECT TOP 1 SUM(O.TotalAmt) AS Invesment, CONCAT(C.FirstName,C.LastName) As CustomerName FROM Customers C INNER JOIN Orders O on C.CustomerID=O.CustomerID
WHERE O.OrderID IN (SELECT OD.OrderID FROM OrderDetails OD WHERE OD.ProductID IN (SELECT ProductID FROM Products WHERE CategoryID IN (SELECT CategoryID FROM Category WHERE Category='Electronic Gadget')))
GROUP BY CONCAT(C.FirstName, C.LastName) Order By Invesment DESC

<!--9. Write an SQL query to calculate the average order value (total revenue divided by the number of orders) for all customers

SELECT  C.FirstName,C.LastName, Avg(O.TotalAmt) As AverageOrderValue FROM Customers C
INNER JOIN Orders O on C.CustomerID=O.CustomerID
Group by C.CustomerID,C.FirstName,C.LastName

<!--10. Write an SQL query to find the total number of orders placed by each customer and list their names along with the order count

SELECT C.FirstName,C.LastName,COUNT(OD.OrderID) as TotalOrder FROM OrderDetails OD
INNER JOIN Orders O on OD.OrderID=O.OrderID
INNER JOIN Customers C on O.CustomerID=C.CustomerID
Group by C.CustomerID,C.FirstName,C.LastName





