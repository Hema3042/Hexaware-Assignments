CREATE TABLE Students(StudentID int Primary key, FirstName varchar(20), LastName varchar(20), DOB date, Email nchar(45), Phone bigint)
CREATE TABLE Teacher(TeacherID int Primary key, FirstName varchar(20), LastName varchar(20), EmailID nchar(45))
CREATE TABLE Courses(CourseID int Primary key, CourseName varchar(20), Credits int, TeacherID int references Teacher(TeacherID))
CREATE TABLE Enrollments(EnrollID int Primary key, StudentID int references Students(StudentID), CourseID int references Courses(CourseID), EnrollmentDate date)
CREATE TABLE Payments(PaymentID nchar(20) Primary key, StudentID int references Students(StudentID), Amount float, PaymentDate date)

INSERT into Students values(1001,'Aadhava','Prakash','2010-05-03','aadhavaprakash@gmail.com',9087654321)
INSERT into Students values(1002,'Bharath','Keshav','2010-09-30','bharathkeshav@gmail.com',9082176543)
INSERT into Students values(1003,'Chandra','Prabha','2009-12-18','chandraprabha@gmail.com',7908654321)
INSERT into Students values(1004,'Pranav','Karthi','2010-04-14','pranavkarthi@gmail.com',9084321765)
INSERT into Students values(1005,'Jana','Priya','2010-10-05','janapriya@gmail.com',9087690843)
INSERT into Students values(1006,'Subha','Sree','2010-06-28','subhasrii@gmail.com',7654329081)
INSERT into Students values(1007,'Kiruthiga','Devi','2010-01-20','kiruthigadevi@gmail.com',8769654321)
INSERT into Students values(1008,'Deepa','Sree','2010-02-17','deepasri@gmail.com',9088769654)
INSERT into Students values(1009,'Ranjani','Priya','2010-06-18','ranjanipriya@gmail.com',9085432176)
INSERT into Students values(1010,'Vasu','Devan','2010-07-24','vasudev@gmail.com',9087685432)

INSERT into Teacher values(2001,'Aadhi','Sesan','aadhisesan@gmail.com')
INSERT into Teacher values(2002,'Sarah','Jones','sarahjones@gmail.com')
INSERT into Teacher values(2003,'Dhanush','Raj','dhanushraj@gmail.com')
INSERT into Teacher values(2004,'Dharaniga','Sree','dharanigasree@gmail.com')
INSERT into Teacher values(2005,'Aanand','Pandav','aanandpandav@gmail.com')
INSERT into Teacher values(2006,'Keshav','Mukesh','keshavmukesh@gmail.com')
INSERT into Teacher values(2007,'William','George','williangeorge@gmail.com')
INSERT into Teacher values(2008,'James','Smith','jamessmith@gmail.com')
INSERT into Teacher values(2009,'Sahana','Devi','dhanushraj@gmail.com')
INSERT into Teacher values(2010,'Yoga','Varshini','yogavarshini@gmail.com')

INSERT into Courses values(3001, 'Machine learning', 4, 2002)
INSERT into Courses values(3002, 'Digital Marketing', 4, 2003)
INSERT into Courses values(3003, 'UI/UX Designing', 4, 2001)
INSERT into Courses values(3004, 'AIDS', 4, 2004)
INSERT into Courses values(3005, 'Web Development', 4, 2005)
INSERT into Courses values(3006, 'DBMS', 4, 2006)
INSERT into Courses values(3007, 'Block Chain', 4, 2007)
INSERT into Courses values(3008, 'Cloud Computing', 4, 2001)
INSERT into Courses values(3009, 'Cyber Security', 4, 2008)
INSERT into Courses values(3010, 'Ethical Hacking', 4, 2010)

INSERT into Enrollments values(5001,1001,3001,'2024-04-03')
INSERT into Enrollments values(5002,1002,3002,'2024-04-03')
INSERT into Enrollments values(5003,1003,3003,'2024-04-03')
INSERT into Enrollments values(5004,1004,3004,'2024-04-03')
INSERT into Enrollments values(5005,1005,3009,'2024-04-03')
INSERT into Enrollments values(5006,1006,3002,'2024-04-04')
INSERT into Enrollments values(5007,1007,3002,'2024-04-04')
INSERT into Enrollments values(5008,1008,3001,'2024-04-04')
INSERT into Enrollments values(5009,1009,3003,'2024-04-12')
INSERT into Enrollments values(5010,1010,3003,'2024-04-12')

INSERT into Payments values(6001,1001,500,'2024-04-03')
INSERT into Payments values(6002,1002,500,'2024-04-03')
INSERT into Payments values(6003,1003,300,'2024-04-03')
INSERT into Payments values(6004,1004,400,'2024-04-03')
INSERT into Payments values(6005,1005,400,'2024-04-03')
INSERT into Payments values(6006,1006,300,'2024-04-04')
INSERT into Payments values(6007,1007,300,'2024-04-04')
INSERT into Payments values(6008,1008,500,'2024-04-04')
INSERT into Payments values(6009,1009,400,'2024-04-12')
INSERT into Payments values(6010,1010,400,'2024-04-12')


--Task 2

SELECT * FROM Students
SELECT * FROM Courses
SELECT * FROM Teacher
SELECT * FROM Enrollments
SELECT * FROM Payments
SELECT *  FROM Teacher

<!--1. Write an SQL query to insert a new student into the "Students" table with the following details:

INSERT into Students values(1011,'John','Doe','1995-08-15','john.doe@example.com',1234567890)

<!--2. Write an SQL query to enroll a student in a course. Choose an existing student and course and insert a record into the "Enrollments" table with the enrollment date

INSERT into Enrollments values(5011,1011,3007,'2024-04-06')

<!--3. Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and modify their email address.

UPDATE Teacher SET EmailID='teacher01@gmail.com' WHERE TeacherID=2005

<!--4. Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select an enrollment record based on the student and course.

DELETE FROM Enrollments WHERE StudentID=1011

<!--5. Update the "Courses" table to assign a specific teacher to a course. Choose any course and teacher from the respective tables.

UPDATE Courses SET TeacherID=2001 Where CourseID=3008

<!--6. Delete a specific student from the "Students" table and remove all their enrollment records from the "Enrollments" table. Be sure to maintain referential integrity

DELETE FROM Students WHERE StudentID=1011
DELETE FROM Enrollments WHERE StudentID=1011
DELETE FROM Payments WHERE StudentID=1011

<!--7. Update the payment amount for a specific payment record in the "Payments" table. Choose any payment record and modify the payment amount

UPDATE Payments SET Amount=700 WHERE PaymentID=6002

--Task 3

SELECT * FROM Students
SELECT * FROM Courses
SELECT * FROM Teacher
SELECT * FROM Enrollments
SELECT * FROM Payments
SELECT *  FROM Teacher

<!--1. Write an SQL query to calculate the total payments made by a specific student. You will need to join the "Payments" table with the "Students" table based on the student's ID.

SELECT DISTINCT(Students.FirstName), SUM(Payments.Amount)
From
	Students 
INNER JOIN
	Payments on Students.StudentID=Payments.StudentID
GROUP BY Students.FirstName

<!--2. Write an SQL query to retrieve a list of courses along with the count of students enrolled in each course. Use a JOIN operation between the "Courses" table and the "Enrollments" table

SELECT Courses.CourseName, Count(Enrollments.CourseID) FROM Courses
INNER JOIN Enrollments on Courses.CourseID=Enrollments.CourseID
GROUP BY Courses.CourseName

<!--3. Write an SQL query to find the names of students who have not enrolled in any course. Use a LEFT JOIN between the "Students" table and the "Enrollments" table to identify students without enrollments

SELECT Students.FirstName, Students.LastName, Enrollments.EnrollID
FROM 
	Students
LEFT JOIN
	Enrollments on Students.StudentID=Enrollments.StudentID

<!--4. Write an SQL query to retrieve the first name, last name of students, and the names of the courses they are enrolled in. Use JOIN operations between the "Students" table and the "Enrollments" and "Courses" tables.

SELECT S.FirstName, S.LastName, C.CourseName
FROM
	Students S
INNER JOIN
	Enrollments E on S.StudentID=E.StudentID
INNER JOIN 
	Courses C on E.CourseID=C.CourseID

<!--5. Create a query to list the names of teachers and the courses they are assigned to. Join the "Teacher" table with the "Courses" table

SELECT T.FirstName, T.LastName, C.CourseName
FROM
	Teacher T
INNER JOIN
	Courses C on T.TeacherID=C.TeacherID

<!--6. Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the "Students" table with the "Enrollments" and "Courses" tables

SELECT S.FirstName, S.LastName, C.CourseName, E.EnrollmentDate
FROM
	Students S
INNER JOIN 
	 Enrollments E on S.StudentID=E.StudentID
INNER JOIN 
	 Courses C on E.CourseID=C.CourseID

<!--7. Find the names of students who have not made any payments. Use a LEFT JOIN between the "Students" table and the "Payments" table and filter for students with NULL payment records.


SELECT S.FirstName, S.LastName, P.Amount
FROM Students S
LEFT JOIN Payments P on S.StudentID=P.StudentID
WHERE Amount IS NULL

<!--8. Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN between the "Courses" table and the "Enrollments" table and filter for courses with NULL enrollment records

SELECT C.CourseName,E.EnrollID
FROM Courses C
LEFT JOIN Enrollments E on C.CourseID=E.CourseID
WHERE E.EnrollID IS Null

<!--9. Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments" table to find students with multiple enrollment records

SELECT S.FirstName, S.LastName
FROM Students S
INNER JOIN Enrollments E on S.StudentID=E.StudentID
GROUP BY S.FirstName,S.LastName
HAVING Count(S.StudentID)>1

<!--10. Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher" table and the "Courses" table and filter for teachers with NULL course assignments.

SELECT T.FirstName, T.LastName, C.CourseID FROM Teacher T 
LEFT JOIN Courses C on T.TeacherID=C.TeacherID
WHERE C.CourseID IS NULL

--Task 4

SELECT * FROM Students
SELECT * FROM Courses
SELECT * FROM Teacher
SELECT * FROM Enrollments
SELECT * FROM Payments
SELECT *  FROM Teacher

<!--1. Write an SQL query to calculate the average number of students enrolled in each course. Use aggregate functions and subqueries to achieve this.


SELECT C.CourseID, COUNT(E.StudentID) AS TotalEnrollments FROM Courses C LEFT JOIN Enrollments E on C.CourseID=E.CourseID
GROUP BY C.CourseID

<!--2. Identify the student(s) who made the highest payment. Use a subquery to find the maximum payment amount and then retrieve the student(s) associated with that amount

SELECT FirstName, LastName FROM Students WHERE StudentID=(SELECT StudentID FROM Payments Where Amount=
(SELECT MAX(Amount) FROM Payments))

<!--3. Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the course(s) with the maximum enrollment count.

SELECT CourseName FROM Courses Where CourseID IN (SELECT CourseID FROM Enrollments GROUP BY CourseID HAVING Count(StudentID)=
(SELECT Top 1 COUNT(E.StudentID) FROM Courses C LEFT JOIN Enrollments E on C.CourseID=E.CourseID
GROUP BY E.CourseID order by COUNT(E.StudentID) desc))

<!--4. Calculate the total payments made to courses taught by each teacher. Use subqueries to sum payments for each teacher's courses

SELECT T.FirstName, T.LastName, SUM(P.Amount) FROM Teacher T INNER JOIN Courses C on T.TeacherID=C.TeacherID
INNER JOIN Enrollments E on C.CourseID=E.CourseID 
INNER JOIN Payments P on E.StudentID=P.StudentID
GROUP BY T.FirstName, T.LastName

<!--5. Identify students who are enrolled in all available courses. Use subqueries to compare a student's enrollments with the total number of courses

SELECT FirstName,LastName FROM Students WHERE StudentID IN (SELECT StudentID FROM Enrollments Group BY StudentID Having COUNT(StudentID)=
(SELECT COUNT(CourseID) FROM Courses))

<!--6. Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to find teachers with no course assignments

SELECT T.FirstName, T.LastName ,C.CourseID FROM  Teacher T LEFT  JOIN Courses C on T.TeacherID=C.TeacherID
WHERE CourseID is NULL

<!--7. Calculate the average age of all students. Use subqueries to calculate the age of each student based on their date of birth.

SELECT 

<!--8. Identify courses with no enrollments. Use subqueries to find courses without enrollment records

SELECT CourseName From Courses WHERE CourseID IN (SELECT C.CourseID FROM Courses C Left Join Enrollments E on C.CourseID=E.CourseID Where EnrollID IS NULL)

<!--9. Calculate the total payments made by each student for each course they are enrolled in. Use subqueries and aggregate functions to sum payments

SELECT CONCAT(S.FirstName  , S.LastName) AS StudentName ,SUM(P.Amount) AS Payment FROM Students S INNER JOIN Payments P on S.StudentID=P.StudentID Group BY CONCAT(S.FirstName  , S.LastName)

<!--10. Identify students who have made more than one payment. Use subqueries and aggregate functions to count payments per student and filter for those with counts greater than one.

SELECT FirstName, LastName FROM Students WHERE StudentID IN (SELECT S.StudentID From Students S INNER JOIN Payments P on S.StudentID=P.StudentID GROUP BY S.StudentID HAVING Count(PaymentID)>1)

<!--11. Write an SQL query to calculate the total payments made by each student. Join the "Students" table with the "Payments" table and use GROUP BY to calculate the sum of payments for each student

SELECT CONCAT(S.FirstName  , S.LastName) AS StudentName ,SUM(P.Amount) AS Payment FROM Students S INNER JOIN Payments P on S.StudentID=P.StudentID Group BY CONCAT(S.FirstName  , S.LastName)

<!--12. Retrieve a list of course names along with the count of students enrolled in each course. Use JOIN operations between the "Courses" table and the "Enrollments" table and GROUP BY to count enrollments.

SELECT C.CourseName, COUNT(E.StudentID) AS EnrollmentCount FROM Courses C LEFT JOIN Enrollments E on C.CourseID=E.CourseID Group By C.CourseName

<!--13. Calculate the average payment amount made by students. Use JOIN operations between the "Students" table and the "Payments" table and GROUP BY to calculate the average

SELECT Avg(P.Amount) As AvgPayment FROM  Payments P INNER JOIN Students S on P.StudentID=S.StudentID

