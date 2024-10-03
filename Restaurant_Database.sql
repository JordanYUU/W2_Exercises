CREATE DATABASE restaurant;

CREATE TABLE customers (
  CustomerID INT PRIMARY KEY AUTO_INCREMENT,
  CustomerName VARCHAR (255) NOT NULL,
  PhoneNum VARCHAR (25),
  CustomerEmail VARCHAR (255),
  MemberStatus  BOOLEAN NOT NULL, 
  MemberID VARCHAR (255)
	);