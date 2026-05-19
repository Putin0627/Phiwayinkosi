-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
);

-- Insert a customer record
INSERT INTO Customers (FullName, Email, PhoneNumber)
VALUES ('Fixer Ngobese', 'fixerngobese11@gmail.com', '0785631293');

-- Create the Barbers table
CREATE TABLE Barbers (
    BarberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Insert a barber record
INSERT INTO Barbers (FullName, PhoneNumber, Email)
VALUES ('Lwaz Buthelezi', '0729994076', 'lwazibuthelezi12@gmail.com');

-- Create the Services table
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL
);

-- Insert some sample services
INSERT INTO Services (ServiceName, Description, Price)
VALUES 
('Haircut', 'A stylish and professional haircut to suit your needs.', 150.00),
('Beard Trim', 'A precise beard trim to keep you looking sharp.', 80.00),
('Shave', 'A smooth and clean shave with a razor.', 100.00),
('Hair Wash', 'A relaxing hair wash with premium products.', 50.00),
('Hair Color', 'Professional hair coloring using high-quality dyes.', 300.00);

-- Create the Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    BarberID INT,
    ServiceID INT,
    PaymentDate DATE NOT NULL,
    AmountPaid DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BarberID) REFERENCES Barbers(BarberID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Insert a payment record
INSERT INTO Payments (CustomerID, BarberID, ServiceID, PaymentDate, AmountPaid, PaymentMethod)
VALUES (1, 1, 1, CURDATE(), 150.00, 'Cash');
