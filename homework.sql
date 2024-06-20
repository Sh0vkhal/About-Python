--1TABLE    
create table Customers (
	CustomerID SERIAL PRIMATY KEY NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birthDate DATE,
	moneySpent VARCHAR(50),
	anniversary DATE
);
insert into Customers (CustomerID, first_name, last_name, birthDate, moneySpent, anniversary) values (1, 'Ham', 'Sedgeman', '3/21/2024', '$44.42', '2/16/2024');
insert into Customers (CustomerID, first_name, last_name, birthDate, moneySpent, anniversary) values (2, 'Francois', 'Sexcey', '6/23/2023', '$22.07', '10/12/2023');
insert into Customers (CustomerID, first_name, last_name, birthDate, moneySpent, anniversary) values (3, 'Starr', 'Tudball', '8/5/2023', '$87.46', '7/30/2023');
--2TABLE
create table Employees (
	employeeID SERIAL PRIMARY KEY NOT NULL,
	firstName VARCHAR(50),
	lastName VARCHAR(50),
	birthDate DATE
);
insert into Employees (employeeID, firstName, lastName, birthDate) values (1, 'Jeremy', 'Jerrard', '7/14/2023');
insert into Employees (employeeID, firstName, lastName, birthDate) values (2, 'Mace', 'Gally', '3/14/2024');
insert into Employees (employeeID, firstName, lastName, birthDate) values (3, 'Dilan', 'Standfield', '9/23/2023');
--3TABLE
create table Products (
	productID SERIAL PRIMARY KEY ,
	category VARCHAR(50),
	price VARCHAR(50)
);
insert into Products (productID, category, price) values (1, '', '$30.71');
insert into Products (productID, category, price) values (2, '', '$28.60');
insert into Products (productID, category, price) values (3, '', '$99.96');
--4TABLE
create table Orders (
	orderID SERIAL PRIMARY KEY NOT NULL,
	customerID INT,
	employeeID INT,
	productID INT,
	orderTotal VARCHAR(50),
	orderDate DATE,
    foreign key (customerID) references Customers (customerID),
    foreign key (employeeID) references Employees (employeeID),
    foreign key (productID) references Products (productID)
);
insert into  Orders (orderID, customerID, employeeID, productID, orderTotal, orderDate) values (1, 1, 1, 1, '$74.50', '6/29/2023');
insert into  Orders (orderID, customerID, employeeID, productID, orderTotal, orderDate) values (2, 2, 2, 2, '$55.73', '12/17/2023');
insert into  Orders (orderID, customerID, employeeID, productID, orderTotal, orderDate) values (3, 3, 3, 3, '$60.65', '8/25/2023');

--JOIN lar qoshish->:
--1TOPSHIRIQ:
select  Customer.customerID,Orders.customerID,from Customers inner join Orders on customerID = Orders.customerID;
select  Customer.customerID,Orders.customerID,from Customers left join Orders on customerID = Orders.customerID;
select  Customer.customerID,Orders.customerID,from Customers right join Orders on customerID = Orders.customerID;
select  Customer.customerID,Orders.customerID,from Customers full join Orders on customerID = Orders.customerID;
--2TOPSHIRIQ:
select Products.productID,Orders.productID,from Products inner join Orders on productID = Orders.productID;
select Products.productID,Orders.productID,from Products left join Orders on productID = Orders.productID;
select Products.productID,Orders.productID,from Products right join Orders on productID = Orders.productID;
select Products.productID,Orders.productID,from Products full join Orders on productID = Orders.productID;