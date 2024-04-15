CREATE TABLE Customers(CustomerID int Primary key, FirstName varchar(20), LastName varchar(20), DOB date, Email nchar(50), Phone Bigint, Address nchar(75))
CREATE TABLE Accounts(AccountID Bigint Primary key, CustomerID int references Customers(CustomerID) ON DELETE CASCADE, AccountType varchar(20), Balance float)
CREATE TABLE Transactions(TransactionID nchar(30) Primary key, AccountID Bigint references Accounts(AccountID) ON DELETE CASCADE, TransactionType varchar(20), Amount float, TransactionDate date)


INSERT into Customers values(1001,'Aadhava','Prakash','2010-05-03','aadhavaprakash@gmail.com',9087654321, 'Chennai')
INSERT into Customers values(1002,'Bharath','Keshav','2010-09-30','bharathkeshav@gmail.com',9082176543, 'Mumbai')
INSERT into Customers values(1003,'Chandra','Prabha','2009-12-18','chandraprabha@gmail.com',7908654321, 'Pune')
INSERT into Customers values(1004,'Pranav','Karthi','2010-04-14','pranavkarthi@gmail.com',9084321765, 'Delhi')
INSERT into Customers values(1005,'Jana','Priya','2010-10-05','janapriya@gmail.com',9087690843, 'Bangalore')
INSERT into Customers values(1006,'Subha','Sree','2010-06-28','subhasrii@gmail.com',7654329081, 'Delhi')
INSERT into Customers values(1007,'Kiruthiga','Devi','2010-01-20','kiruthigadevi@gmail.com',8769654321, 'Mumbai')
INSERT into Customers values(1008,'Deepa','Sree','2010-02-17','deepasri@gmail.com',9088769654, 'Pune')
INSERT into Customers values(1009,'Ranjani','Priya','2010-06-18','ranjanipriya@gmail.com',9085432176, 'Chennai')
INSERT into Customers values(1010,'Vasu','Devan','2010-07-24','vasudev@gmail.com',9087685432, 'Chennai')


INSERT into Accounts values(30400109871, 1001, 'Savings', 85000)
INSERT into Accounts values(30400109872, 1002, 'Zero-Balanced', 35000)
INSERT into Accounts values(30400109873, 1003, 'Savings', 55000)
INSERT into Accounts values(30400109874, 1004, 'Savings', 48000)
INSERT into Accounts values(30400109875, 1005, 'Current', 15000)
INSERT into Accounts values(30400109876, 1006, 'Current', 24000)
INSERT into Accounts values(30400109877, 1007, 'Savings', 10000)
INSERT into Accounts values(30400109878, 1008, 'Zero-Balanced', 50000)
INSERT into Accounts values(30400109879, 1009, 'Zero-Balanced', 60000)
INSERT into Accounts values(30400109880, 1010, 'Savings', 90000)


INSERT into Transactions values('TRX54321', 30400109879, 'Transfer', 2000, '2023-01-03')
INSERT into Transactions values('TRX54322', 30400109876, 'Deposit', 12000, '2023-03-02')
INSERT into Transactions values('TRX54323', 30400109872, 'Deposit', 8000, '2023-03-13')
INSERT into Transactions values('TRX54324', 30400109877, 'Deposit', 15000, '2023-03-31')
INSERT into Transactions values('TRX54325', 30400109880, 'Transfer', 6000, '2023-04-12')
INSERT into Transactions values('TRX54326', 30400109873, 'Transfer', 10000, '2023-04-15')
INSERT into Transactions values('TRX54327', 30400109880, 'Transfer', 1000, '2023-04-19')
INSERT into Transactions values('TRX54328', 30400109871, 'Withdrawal', 21000, '2023-04-23')
INSERT into Transactions values('TRX54329', 30400109874, 'Transfer', 4500, '2023-04-30')
INSERT into Transactions values('TRX54330', 30400109878, 'Deposit', 52500, '2023-05-01')
INSERT into Transactions values('TRX54331', 30400109871, 'Withdrawal', 87300, '2023-05-06')
INSERT into Transactions values('TRX54332', 30400109874, 'Withdrawal', 75000, '2023-05-27')
INSERT into Transactions values('TRX54333', 30400109876, 'Withdrawal', 56000, '2023-06-09')

SELECT * FROM Customers
SELECT * FROM Accounts
SELECT * FROM Transactions

--Task 2

<!--1. Write a SQL query to retrieve the name, account type and email of all customers.

SELECT C.FirstName, C.LastName, A.AccountType, C.Email FROM Customers C 
Left Join Accounts A on C.CustomerID=A.CustomerID

<!--2. Write a SQL query to list all transaction corresponding customer

SELECT  T.TransactionID, C.FirstName, C.LastName FROM Customers C 
Inner Join Accounts A on C.CustomerID=A.CustomerID 
Inner JOin Transactions T on A.AccountID=T.AccountID

<!--3. Write a SQL query to increase the balance of a specific account by a certain amount.

Update Accounts SET Balance=(2*Balance) Where AccountID=30400109875

<!--4. Write a SQL query to Combine first and last names of customers as a full_name.

SELECT CONCAT(FirstName,' ' ,LastName) AS FullName FROM Customers

<!--5. Write a SQL query to remove accounts with a balance of zero where the account type is savings

DELETE Accounts WHERE Balance<=0

<!--6. Write a SQL query to Find customers living in a specific city.

SELECT CONCAT(FirstName, LastName) As CustomerName FROM Customers Where Address='Pune'

<!--7. Write a SQL query to Get the account balance for a specific account

SELECT Balance FROM Accounts WHERE AccountID=30400109873

<!--8. Write a SQL query to List all current accounts with a balance greater than $1,000

SELECT AccountID FROM Accounts WHERE AccountType='Current' AND Balance>1000 

<!--9. Write a SQL query to Retrieve all transactions for a specific account

SELECT * FROM Transactions WHERE AccountID=30400109876

<!--10. Write a SQL query to Calculate the interest accrued on savings accounts based on a given interest rate.

DECLARE @inpinterest int
SET @inpInterest=20
Update Accounts SET Balance=(Balance + (Balance*@inpinterest/100)) WHERE AccountType='Savings'

<!--11. Write a SQL query to Identify accounts where the balance is less than a specified overdraft limit

DECLARE @OverDraftLimit int
SET @OverDraftLimit=25000
SELECT AccountID From Accounts WHERE Balance<@OverDraftLimit

<!--12. Write a SQL query to Find customers not living in a specific city

SELECT CONCAT(FirstName, LastName) AS CustomerName FROM Customers WHERE Address NOT LIKE 'Bangalore'


--Task 3

<!--1. Write a SQL query to Find the average account balance for all customers. 

SELECT AVG(Balance) AS AvgBalance FROM Accounts

<!--2. Write a SQL query to Retrieve the top 10 highest account balances

SELECT Top 10 Balance, AccountID FROM Accounts Order By Balance DESC

<!--3. Write a SQL query to Calculate Total Deposits for All Customers in specific date.

SELECT SUM(Amount)AS TotalDeposit FROM Transactions WHERE TransactionDate='2023-03-13' AND TransactionType='Deposit'

<!--4. Write a SQL query to Find the Oldest and Newest Customers.

SELECT Top 1 CONCAT(FirstName, LastName) As OldestCustomer, DOB From Customers Order by DOB
SELECT Top 1 CONCAT(FirstName, LastName) As NewestCustomer, DOB FROM Customers Order by DOB DESC

<!--5. Write a SQL query to Retrieve transaction details along with the account type.

SELECT T.*, A.AccountType FROM Transactions T INNER JOIN Accounts A on T.AccountID=A.AccountID

<!--6. Write a SQL query to Get a list of customers along with their account details.

SELECT CONCAT(C.FirstName, C.LastName) AS CustomerName, A.* FROM Customers C INNER JOIN Accounts A on C.CustomerID=A.CustomerID

<!--7. Write a SQL query to Retrieve transaction details along with customer information for a specific account.

SELECT C.*, T.* FROM Customers C INNER JOIN Accounts A on C.CustomerID=A.CustomerID
LEFT JOIN Transactions T on T.AccountID=A.AccountID WHERE A.AccountID=30400109874

<!--8. Write a SQL query to Identify customers who have more than one account

SELECT CONCAT(C.FirstName,C.LastName) AS CustomerName FROM Customers C LEFT JOIN Accounts A on C.CustomerID=A.CustomerID GROUP BY CONCAT(C.FirstName,C.LastName) HAVING Count(AccountID)>1

<!--9. Write a SQL query to Calculate the difference in transaction amounts between deposits and withdrawal
 
DECLARE @WithdrawalAmt float
SET @WithdrawalAmt=SELECT SUM(Amount) FROM Transactions WHERE TransactionType='Withdrawal'
DECLARE @DepositAmt Float
SET @DepositAmt=SELECT SUM(Amount) FROM Transactions WHERENTransactionType='Deposit'
SELECT @WithdrawalAmt Difference @DepositAmt

<!--10. Write a SQL query to Calculate the average daily balance for each account over a specified period.



<!--11. Calculate the total balance for each account type

SELECT A.AccountID, (A.Balance-T.Amount) AS TotalBalance FROM Accounts A 
Inner Join Transactions T on A.AccountID=T.AccountID 

<!--12. Identify accounts with the highest number of transactions order by descending order

SELECT DISTINCT(A.AccountID), Count(T.TransactionID) AS NoOfTransactions FROM Accounts A
INNER JOIN Transactions T on A.AccountID=T.AccountID GROUP BY A.AccountID Order By Count(TransactionID) DESC

<!--13. List customers with high aggregate account balances, along with their account types.

SELECT CONCAT(C.FirstName, C.LastName) AS CustomerName, A.AccountType, (A.Balance-T.Amount) AS AggregateBalance
FROM Customers C LEFT JOIN Accounts A on C.CustomerID=A.CustomerID
LEFT JOIN Transactions T on  T.AccountID=A.AccountID WHERE A.AccountID IN (SELECT TOP 1 A.AccountID From Accounts A
Left Join Transactions T on A.AccountID=T.AccountID Order By (A.Balance-T.Amount) DESC) Order by (A.Balance-T.Amount) DESC

<!--14. Identify and list duplicate transactions based on transaction amount, date, and account.





--Task 4

SELECT * FROM Customers
SELECT * FROM Accounts
SELECT * FROM Transactions

<!--1. Retrieve the customer(s) with the highest account balance.

SELECT Top 1 A.Balance, CONCAT(C.FirstName, C.LastName) AS CustomerName From Customers C 
Inner Join Accounts A on C.CustomerID=A.CustomerID Order By A.Balance DESC

<!--2. Calculate the average account balance for customers who have more than one account

SELECT C.CustomerID, Avg(A.Balance) AS AvgBalance FROM Customers C INNER JOIN Accounts A on C.CustomerID=A.CustomerID
WHERE C.CustomerID IN (SELECT CustomerID From Accounts  GROUP By CustomerID HAVING Count(AccountID)>1) GROUP By C.CustomerID

<!--3. Retrieve accounts with transactions whose amounts exceed the average transaction amount.

SELECT A.AccountID, A.CustomerID, A.AccountType, A.Balance
FROM Accounts A INNER JOIN Transactions T ON A.AccountID = T.AccountID
INNER JOIN (SELECT AVG(Amount) AS AvgTransactionAmount FROM Transactions) 
Avg ON T.Amount > Avg.AvgTransactionAmount


<!--4. Identify customers who have no recorded transactions.

SELECT CONCAT(C.FirstName, C.LastName) AS CustomerName FROM Customers C 
LEFT JOIN Accounts A on C.CustomerID=A.CustomerID
LEFT JOIN Transactions T on A.AccountID=T.AccountID GROUP By CONCAT(C.FirstName, C.LastName) HAVING COUNT(T.TransactionID)=0

<!--5. Calculate the total balance of accounts with no recorded transactions.

SELECT CONCAT(C.FirstName, C.LastName) AS CustomerName, SUM(A.Balance) AS Balance FROM Customers C 
LEFT JOIN Accounts A on C.CustomerID=A.CustomerID
LEFT JOIN Transactions T on A.AccountID=T.AccountID GROUP By CONCAT(C.FirstName, C.LastName) HAVING COUNT(T.TransactionID)=0

<!--6. Retrieve transactions for accounts with the lowest balance

SELECT T.* FROM Transactions T INNER JOIN Accounts A on T.AccountID=A.AccountID
Order By A.Balance

<!--7. Identify customers who have accounts of multiple types.

SELECT CONCAT(C.FirstName,C.LastName) AS CustomerName FROM Customers C 
Left Join Accounts A on C.CustomerID=A.CustomerID GROUP BY CONCAT(C.FirstName, C.LastName)
HAVING Count(A.AccountID)>1 

<!--8. Calculate the percentage of each account type out of the total number of accounts.

SELECT AccountType, COUNT(*) AS CountOfAccountType, (COUNT(*) * 100 / (SELECT COUNT(*) FROM Accounts)) AS Percentage
FROM Accounts GROUP BY AccountType

<!--9. Retrieve all transactions for a customer with a given customer_id.

SELECT T.* FROM Transactions T Left JOIN Accounts A on T.AccountID=A.AccountID
LEFT JOIN Customers C on A.CustomerID=C.CustomerID WHERE C.CustomerID=1004

<!--10. Calculate the total balance for each account type, including a subquery within the SELECT clause

SELECT AccountType, SUM(Balance) AS TotalBalance FROM Accounts
WHERE AccountID IN (SELECT AccountID FROM Accounts) GROUP BY AccountType





