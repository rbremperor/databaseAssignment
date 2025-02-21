-- Insert a valid customer with a valid address and category
INSERT INTO Address (Street, City, State, PostalCode, Country) 
VALUES ('123 Main St', 'Tashkent', 'Sergeli', '100015', 'Uzbekistan');

select * from Address where Street = '123 Main St'

INSERT INTO Category (Name) 
VALUES ('Regular');
Select * from Category where Name = 'Regular';

INSERT INTO Customer (Firstname, Lastname, Phone, Email, AddressId, CategoryId) 
VALUES ('John', 'Doe', '987-654-3210', 'john.doe@example.com', 21, 4);
select * from Customer where CategoryId = 4 and AddressId = 21;
SELECT c.Firstname, c.Lastname, a.Street, a.City, a.Country
FROM Customer c
JOIN Address a ON c.AddressId = a.id;



INSERT INTO Job (startLocation, destination, pickupDate, deliveryDate, CustomerId, WarehouseId, PaymentStatusId)
VALUES ('Location A', 'Location B', '2025-01-01', '2025-01-02', 999, 1, 1);


-- Create a warehouse and a job for a specific customer
INSERT INTO Warehouse (Name, LocationId, ContactNumber) 
VALUES ('Warehouse A', 1, '555-1234');

-- Assign a job to the customer and warehouse
INSERT INTO Job (startLocation, destination, pickupDate, deliveryDate, CustomerId, WarehouseId, PaymentStatusId)
VALUES ('Location A', 'Location B', '2025-02-01', '2025-02-02', 1, 1, 1);

Select * from Job where startLocation = 'Location A';
