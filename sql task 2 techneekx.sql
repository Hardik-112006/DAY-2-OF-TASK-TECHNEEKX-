-- USERS TABLE
CREATE DATABASE AMAZON;
USE AMAZON;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    user_email VARCHAR(100)
);

INSERT INTO Users VALUES
(1,'Ali','ali@gmail.com'),
(2,'Sara','sara@gmail.com'),
(3,'Ahmed','ahmed@gmail.com'),
(4,'Fatima','fatima@gmail.com'),
(5,'Usman','usman@gmail.com'),
(6,'Ayesha','ayesha@gmail.com'),
(7,'Bilal','bilal@gmail.com'),
(8,'Zain','zain@gmail.com'),
(9,'Noor','noor@gmail.com'),
(10,'Hassan','hassan@gmail.com');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_amount DECIMAL(10,2)
);
INSERT INTO Orders VALUES
(201,'2025-06-01',53000),
(202,'2025-06-02',52000),
(203,'2025-06-03',3500),
(204,'2025-06-04',2000),
(205,'2025-06-05',56000);


CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(101,'Laptop',50000),
(102,'Mouse',1000),
(103,'Keyboard',2500);

CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    quantity INT
);

INSERT INTO OrderItems VALUES
(1,1),  -- Laptop
(2,3),  -- Mouse x3
(3,1),  -- Laptop
(4,2),  -- Keyboard x2
(5,1),  -- Mouse
(6,2),  -- Mouse x2
(7,1),  -- Laptop
(8,1);  -- Keyboard

CREATE TABLE AddsTo (
    user_id INT,
    order_id INT,
    PRIMARY KEY(user_id, order_id),
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id)
);

INSERT INTO AddsTo VALUES
(1,201),
(2,202),
(3,203),
(4,204),
(5,205);


CREATE TABLE Has (
    item_id INT,
    product_id INT,
    PRIMARY KEY(item_id, product_id),
    FOREIGN KEY(item_id) REFERENCES OrderItems(item_id),
    FOREIGN KEY(product_id) REFERENCES Products(product_id)
);

INSERT INTO Has VALUES
(1,101),
(2,102),
(3,101),
(4,103),
(5,102),
(6,102),
(7,101),
(8,103);

SELECT * FROM Users;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM OrderItems;
SELECT * FROM AddsTo;
SELECT * FROM Has;
