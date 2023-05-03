-- after forward engineering the little lemon db based on the ERD I created, I need
-- to poulate the data base with random data, so the following are a bunch of randomly 
-- generating data for thge tables
USE litlemdb;

-- Address table
INSERT INTO Address (AddressID, StreetAddress, City, State, PostalCode, Country)
VALUES
(1, '123 Main St', 'New York', 'NY', '10001', 'USA'),
(2, '456 Central Ave', 'Los Angeles', 'CA', '90001', 'USA'),
(3, '789 Market St', 'San Francisco', 'CA', '94103', 'USA'),
(4, '1011 Broadway', 'Chicago', 'IL', '60601', 'USA'),
(5, '1213 Elm St', 'Austin', 'TX', '73301', 'USA'),
(6, '1415 Park Ave', 'Miami', 'FL', '33101', 'USA'),
(7, '1617 King St', 'Boston', 'MA', '02101', 'USA'),
(8, '1819 Pine St', 'Seattle', 'WA', '98101', 'USA'),
(9, '2021 River Rd', 'Denver', 'CO', '80001', 'USA'),
(10, '2223 Maple St', 'Atlanta', 'GA', '30301', 'USA');

-- Customer Details table
INSERT INTO Customer (CustomerID, CustomerFirstName, CustomerLastName, Email, ContactNumber)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 555-123-4567),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 555-234-5678),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 555-345-6789),
(4, 'Sara', 'Miller', 'sara.miller@example.com', 555-456-7890),
(5, 'Tom', 'Brown', 'tom.brown@example.com', 555-567-8901),
(6, 'Laura', 'Davis', 'laura.davis@example.com', 555-678-9012),
(7, 'James', 'Wilson', 'james.wilson@example.com', 555-789-0123),
(8, 'Linda', 'Garcia', 'linda.garcia@example.com', 555-890-1234),
(9, 'David', 'Martinez', 'david.martinez@example.com', 555-901-2345),
(10, 'Emma', 'Hernandez', 'emma.hernandez@example.com', 555-012-3456);

DESCRIBE Customer;

-- Staff Information table
INSERT INTO Staff (StaffID, FirstName, LastName, Email, ContactNumber)
VALUES
(1, 'Alice', 'Anderson', 'alice.anderson@example.com', 555-111-2222),
(2, 'Bob', 'Jackson', 'bob.jackson@example.com', 555-222-3333),
(3, 'Charlie', 'White', 'charlie.white@example.com', 555-333-4444),
(4, 'Diana', 'Lewis', 'diana.lewis@example.com', 555-444-5555),
(5, 'Ethan', 'Lee', 'ethan.lee@example.com', 555-555-6666),
(6, 'Fiona', 'Walker', 'fiona.walker@example.com', 555-666-7777),
(7, 'George', 'Hall', 'george.hall@example.com', 555-777-8888),
(8, 'Hannah', 'Banana', 'hannah.banana@example.com', 666-666-7677),
(9, 'Ed', 'Talker', 'ed.talker@example.com', 888-434-7777),
(10, 'Nick', 'Jonas', 'therealnick@example.com', 555-888-8888)

-- Menu table
INSERT INTO Menu (MenuID, MenuItemName, MenuItemDescription, MenuPriceItem)
VALUES
(1, 'Pizza Margherita', 'Classic pizza with tomato sauce, mozzarella, and basil', 10.99),
(2, 'Caesar Salad', 'Crisp romaine lettuce, croutons, and Caesar dressing', 7.99),
(3, 'Spaghetti Bolognese', 'Spaghetti pasta with a rich meat sauce', 12.99),
(4, 'Grilled Chicken Sandwich', 'Grilled chicken with lettuce, tomato, and mayo on a bun', 9.99),
(5, 'Cheeseburger', 'Beef patty with cheese, lettuce, tomato, and onion on a bun', 11.99),
(6, 'Taco Salad', 'A crispy tortilla bowl filled with lettuce, beans, cheese, and salsa', 8.99),
(7, 'Fish and Chips', 'Battered and fried fish served with crispy fries', 14.99),
(8, 'BBQ Chicken Pizza', 'Pizza with BBQ sauce, chicken, red onion, and cilantro', 13.99),
(9, 'Mushroom Risotto', 'Creamy Arborio rice with sautéed mushrooms and Parmesan', 10.99),
(10, 'Pad Thai', 'Stir-fried rice noodles with egg, tofu, and bean sprouts in a tangy sauce', 12.99);

SELECT * FROM Menu;

-- Bookings table
INSERT INTO Booking (BookingID, BookingSlot, CustomerID, StaffID, AddressID, `Total Price`)
VALUES
(1, '2023-05-01', 1, 1, 1, 65.99),
(2, '2023-05-02', 2, 2, 2, 42.99),
(3, '2023-05-03', 3, 3, 3, 59.99),
(4, '2023-05-04', 4, 4, 4, 37.99),
(5, '2023-05-05', 5, 5, 5, 72.99),
(6, '2023-05-06', 6, 6, 6, 54.99),
(7, '2023-05-07', 7, 7, 7, 49.99),
(8, '2023-05-08', 8, 8, 8, 64.99),
(9, '2023-05-09', 9, 1, 9, 47.99),
(10, '2023-05-10', 10, 2, 10, 53.99);

-- Orders table
INSERT INTO Orders (OrderID, OrderDate, DeliveryStatus, AddressID, BookingID, TotalPrice)
VALUES
(1, '2023-05-01', 'Delivered', 1, 1, 65.99),
(2, '2023-05-02', 'Delivered', 2, 2, 42.99),
(3, '2023-05-03', 'Delivered', 3, 3, 59.99),
(4, '2023-05-04', 'Delivered', 4, 4, 37.99),
(5, '2023-05-05', 'Delivered', 5, 5, 77.77),
(6, '2023-05-01', 'Delivered', 6, 6, 65.99),
(7, '2023-05-02', 'Delivered', 7, 7, 42.99),
(8, '2023-05-03', 'Delivered', 8, 8, 59.99),
(9, '2023-05-04', 'Delivered', 9, 9, 37.99),
(10, '2023-05-05', 'Delivered', 10, 10, 100.00)

SELECT * FROM Orders;

-- Order Menu Items table
INSERT INTO `Order Menu Items` (OrderMenuItemsID, OrderID, MenuID, Quantity)
VALUES
(1, 1, 1, 2),
(2, 1, 5, 1),
(3, 1, 7, 1),
(4, 2, 3, 3),
(5, 2, 8, 1),
(6, 3, 2, 2),
(7, 3, 4, 2),
(8, 4, 1, 1),
(9, 4, 6, 1),
(10, 4, 10, 1),
(11, 5, 7, 2),
(12, 5, 9, 3),
(13, 6, 1, 2),
(14, 6, 3, 1),
(15, 6, 5, 1),
(16, 7, 8, 3),
(17, 7, 10, 1),
(18, 8, 2, 2),
(19, 8, 6, 2),
(20, 9, 4, 2),
(21, 9, 7, 1),
(22, 10, 1, 1),
(23, 10, 9, 2),
(24, 10, 10, 1);

SELECT * FROM `Order Menu Items`

-- task one, creating view for Orders Table that summarizes OrderID, Quantity, BillAmount
CREATE VIEW OrdersView AS 
SELECT o.OrderID, ormi.Quantity, o.TotalPrice
FROM Orders o LEFT JOIN `Order Menu Items` as ormi
ON o.OrderID = ormi.OrderID
WHERE o.TotalPrice > 2;

SELECT * FROM OrdersView;

-- Task 2: Creating multiple joins for reporting purposes from the following tables
-- Customers table: The customer id and full name
-- Orders table: The order id and cost
-- Menus table: The menus name
-- MenusItems table: course name and starter name.
-- make sure to filter for orders that are more than 150 (I had to modify because of the data input
-- i generated for these tables, so I put 15 over 150

SELECT 
    cd.CustomerID, 
    CONCAT(cd.CustomerFirstName, ' ', cd.CustomerLastName) AS FullName,
    o.OrderID, 
    o.TotalPrice AS OrderCost,
    m.MenuItemName AS MenuName,
    omi.Quantity,
    m.MenuItemDescription AS MenuItemDescription
FROM Customer cd
JOIN Booking b ON cd.CustomerID = b.CustomerID
JOIN Orders o ON b.BookingID = o.BookingID
JOIN `Order Menu Items` omi ON o.OrderID = omi.OrderID
JOIN Menu m ON omi.MenuID = m.MenuID
WHERE o.TotalPrice > 15;

-- Task 3: Create Subquery to pull Menu items for orders that have more than 2 items
SELECT 
    m.MenuItemName
FROM Menu m
WHERE m.MenuID = ANY (
    SELECT DISTINCT omi.MenuID
    FROM `Order Menu Items` omi
    WHERE omi.Quantity > 2
);


-- stored procedure to GetMaxQuantity() for LittleLemon; it returns max quantity

DELIMITER $$

CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(Quantity)
	FROM `Order Menu Items`; 
END$$

DELIMITER;

CALL GetMaxQuantity;

-- The prepared statement should accept one input argument, the CustomerID value, from a variable.
-- The statement should return the order id, the quantity and the order cost from the Orders table. 
-- Once you create the prepared statement, you can create a variable called id and assign it value of 1.
-- Then execute the GetOrderDetail prepared statement using the following syntax:
    
-- 1. Prepare the statement
PREPARE GetOrderDetail 
FROM 'SELECT 
		o.OrderID, 
		omi.Quantity, 
        o.TotalPrice 
		FROM Orders o JOIN Booking b 
        ON o.BookingID = b.BookingID
        LEFT JOIN `Order Menu Items` omi
        ON o.OrderID = omi.OrderID
        WHERE b.CustomerID = ?';
        
-- 2. Set the CustomerID value
SET @id = 1;

-- 3. Execute the prepared statement
EXECUTE GetOrderDetail USING @id;

-- 4. Deallocate the prepared statement
DEALLOCATE PREPARE GetOrderDetail;

-- CANCEL ORDER; lit lem wants us to create a stored procedure that cancels orders
DELIMITER $$

CREATE PROCEDURE CancelOrder(IN order_id INT, OUT Confirmation VARCHAR(255))
BEGIN
    DELETE FROM Orders WHERE OrderID = order_id;
    SET Confirmation = CONCAT('Order ', order_id, ' is cancelled');
END$$

DELIMITER ;


-- Replace '1' with the order_id you want to cancel
-- Start a new transaction
START TRANSACTION;

SET @Confirmation = '';

-- Replace '1' with the order_id you want to cancel
CALL CancelOrder(1, @Confirmation); 

-- Select the @Confirmation variable to display the output message:
SELECT @Confirmation AS Confirmation;

-- Roll back the transaction (undo the changes)
ROLLBACK;
-- COMMIT;


SELECT * FROM Booking;

-- alter table for Booking

ALTER TABLE Booking ADD COLUMN TableNo INT

ALTER TABLE Booking ADD COLUMN TableStatus VARCHAR(20);


UPDATE Booking
SET TableNo = CASE BookingID
	WHEN 1 THEN 5
	WHEN 2 THEN 3
    WHEN 3 THEN 2
    WHEN 4 THEN 1
    END
WHERE BookingID IN(1,2,3,4)


-- Task 2: For Littlemon Booking SPROC
-- DROP PROCEDURE IF EXISTS CheckingBooking;
DELIMITER $$

CREATE PROCEDURE CheckingBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status VARCHAR(20);
    
    SELECT IF(COUNT(*) > 0, 'Unavailable', 'Available') INTO table_status 
    FROM Booking
    WHERE TableNo = table_number AND BookingSlot = booking_date;
    
    SELECT CONCAT('Table ', table_number, ' is ', table_status, ' on ', booking_date) AS Result;
END $$

DELIMITER ;


-- checking the output reflects META's output on Learning Module
SELECT 
	BookingID,
    DATE(BookingSlot),
    TableNo,
    CustomerID
FROM
	Booking;
    
-- Calling the Booking 
Call CheckingBooking("2023-05-01", 5); -- should be unavailable
-- CALL CheckingBooking("2023-06-01", 5); -- should be available


-- Task 3: Create a sproc with valid input
-- DROP PROCEDURE AddValidBooking;
DELIMITER $$

CREATE PROCEDURE AddValidBooking(IN bookingDate DATE, IN tableNumber INT, OUT message VARCHAR(255))
BEGIN
  DECLARE existingBooking INT;

  START TRANSACTION;

  SELECT COUNT(*)
  INTO existingBooking
  FROM Booking
  WHERE BookingSlot = bookingDate AND TableNo = tableNumber;

  IF existingBooking = 0 THEN
    INSERT INTO Booking (BookingSlot, TableNo)
    VALUES (bookingDate, tableNumber);
    SET message = 'Booking successful.';
  ELSE
    SET message = 'Booking declined. The table is already booked on the specified date.';
  END IF;

  COMMIT;

END $$
DELIMITER ;


-- call the procedure
SET @outputMessage = '';
CALL AddValidBooking('2023-05-01', 5, @outputMessage);
SELECT @outputMessage;

-- Exercise: Create SQL queries to add and update bookings
-- Add Booking
DELIMITER $$
CREATE PROCEDURE AddBooking(
    IN p_BookingID INT,
    IN p_CustomerID INT,
    IN p_BookingDate DATE,
    IN p_TableNo INT
)
BEGIN
    -- Check if the CustomerID exists in the Customer table
    IF NOT EXISTS (SELECT 1 FROM Customer WHERE CustomerID = p_CustomerID) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CustomerID does not exist in the Customer table';
    ELSE
        -- Insert the new booking record into the Booking table
        INSERT INTO Booking (BookingID, BookingSlot, CustomerID, TableNo)
        VALUES (p_BookingID, p_BookingDate, p_CustomerID, p_TableNo);
    END IF;
END $$

DELIMITER ;

-- call sproc
CALL AddBooking(11, 9, '2023-05-10', 5);

-- view results
SELECT * FROM Booking;


-- Task 2: Create sproc for Updating Booking table
DELIMITER $$

CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN 
	UPDATE Booking 
    SET BookingSlot = booking_date 
    WHERE BookingID = booking_id;
END $$

DELIMITER ; 

-- call sproc
CALL UpdateBooking(6, "2023-12-16")

-- check bookings for updates
SELECT * FROM Booking;

-- create a new procedure called CancelBooking that they can use to cancel or remove a booking.
-- The procedure should have one input parameter in the form of booking id. 
-- You must also write a DELETE statement inside the procedure. 
DROP PROCEDURE CancelBooking
DELIMITER $$

CREATE PROCEDURE CancelBooking(IN bookingID INT, OUT message VARCHAR(255))
BEGIN
  DECLARE bookingDeleted INT;

  SET SQL_SAFE_UPDATES = 0;
  START TRANSACTION;
  
  -- Delete related rows in the referencing table
  DELETE FROM Customer
  WHERE BookingID = bookingID;

  -- Delete booking
  DELETE FROM Booking
  WHERE BookingID = bookingID;

  SET bookingDeleted = ROW_COUNT();

  IF bookingDeleted = 1 THEN
    SET message = CONCAT(bookingID, ' has been cancelled.');
  ELSE
    SET message = CONCAT('No booking found with BookingID: ', bookingID, '.');
  END IF;

  COMMIT;
  SET SQL_SAFE_UPDATES = 1;
  
END $$

DELIMITER ;



-- CAll the sproc and it 
SET @message = '';
CALL CancelBooking(11, @message);
SELECT @message;

