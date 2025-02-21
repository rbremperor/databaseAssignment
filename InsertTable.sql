INSERT INTO Category (Name) 
VALUES ('Category1'), 
       ('Category2'), 
       ('Category3');


INSERT INTO LoadSize (Name) 
VALUES ('Small'), 
       ('Medium'), 
       ('Large');

INSERT INTO PaymentStatus (Status) 
VALUES ('Paid'), 
       ('Pending');

INSERT INTO ProductType (Name) 
VALUES ('No Risk'), 
       ('High Risk');


INSERT INTO UnitStatus (Status) 
VALUES ('Active'), 
       ('Inactive');


INSERT INTO ServiceStatus (Name) 
VALUES ('In Service'), 
       ('Out of Service');


INSERT INTO CouplingStatus (Status) 
VALUES ('Coupled'), 
       ('Uncoupled');

INSERT INTO Address (Street, City, State, PostalCode, Country) 
VALUES 
    ('456 Elm St', 'Tashkent', 'Tashkent', '100200', 'Uzbekistan'),
    ('789 Oak Ave', 'Samarkand', 'Samarkand', '140300', 'Uzbekistan'),
    ('101 Pine Rd', 'Bukhara', 'Bukhara', '200400', 'Uzbekistan'),
    ('202 Maple Ln', 'Namangan', 'Namangan', '310500', 'Uzbekistan'),
    ('303 Birch Blvd', 'Andijan', 'Andijan', '410600', 'Uzbekistan'),
    ('404 Cedar St', 'Ferghana', 'Ferghana', '510700', 'Uzbekistan'),
    ('505 Cherry Dr', 'Kokand', 'Fergana', '610800', 'Uzbekistan'),
    ('606 Willow Way', 'Nukus', 'Karakalpakstan', '710900', 'Uzbekistan'),
    ('707 Redwood Cir', 'Khiva', 'Khorezm', '810100', 'Uzbekistan'),
    ('808 Chestnut Ct', 'Zarafshan', 'Navoi', '910200', 'Uzbekistan'),
    ('909 Alder Ave', 'Tashkent', 'Tashkent', '100300', 'Uzbekistan'),
    ('1001 Maple St', 'Shymkent', 'South Kazakhstan', '111300', 'Kazakhstan'),
    ('1102 Aspen Ln', 'Almaty', 'Almaty', '122400', 'Kazakhstan'),
    ('1203 Juniper Rd', 'Kyzylorda', 'Kyzylorda', '133500', 'Kazakhstan'),
    ('1304 Fir Blvd', 'Atyrau', 'Atyrau', '144600', 'Kazakhstan'),
    ('1405 Hickory Dr', 'Orenburg', 'Orenburg', '155700', 'Russia'),
    ('1506 Pinewood St', 'Moscow', 'Moscow', '166800', 'Russia'),
    ('1607 Sycamore Ct', 'Saint Petersburg', 'Saint Petersburg', '177900', 'Russia'),
    ('1708 Elmwood Ave', 'Karakol', 'Issyk-Kul', '188100', 'Kyrgyzstan'),
    ('1809 Acacia Ln', 'Bishkek', 'Chui', '199200', 'Kyrgyzstan');


INSERT INTO Customer (Firstname, Lastname, Phone, Email, AddressId, CategoryId) 
VALUES 
    ('John', 'Doe', '555-1234', 'johndoe@email.com', 1, 1),
    ('Jane', 'Smith', '555-5678', 'janesmith@email.com', 2, 2),
    ('Mike', 'Johnson', '555-8765', 'mikejohnson@email.com', 3, 1),
    ('Emily', 'Davis', '555-4321', 'emilydavis@email.com', 4, 3),
    ('Chris', 'Brown', '555-9876', 'chrisbrown@email.com', 5, 2),
    ('Sarah', 'Wilson', '555-2468', 'sarahwilson@email.com', 6, 1),
    ('David', 'Lee', '555-1357', 'davidlee@email.com', 7, 3),
    ('Laura', 'Clark', '555-8642', 'lauraclark@email.com', 8, 2),
    ('James', 'Martinez', '555-7531', 'jamesmartinez@email.com', 9, 1),
    ('Olivia', 'Garcia', '555-6420', 'oliviagarcia@email.com', 10, 3);

INSERT INTO Warehouse (Name, LocationId, ContactNumber) 
VALUES 
    ('Warehouse A', 1, '555-5678'),
    ('Warehouse B', 2, '555-8765'),
    ('Warehouse C', 3, '555-4321'),
    ('Warehouse D', 4, '555-9876'),
    ('Warehouse E', 5, '555-2468');

INSERT INTO Job (startLocation, destination, pickupDate, deliveryDate, CustomerId, WarehouseId, paymentstatusid) 
VALUES 
    ('Tashkent', 'Samarkand', '2025-02-01', '2025-02-02', 1, 1, 1),
    ('Tashkent', 'Bukhara', '2025-02-05', '2025-02-06', 2, 2, 2),
    ('Samarkand', 'Fergana', '2025-02-10', '2025-02-11', 3, 3, 1),
    ('Bukhara', 'Andijan', '2025-02-12', '2025-02-13', 4, 4, 1),
    ('Fergana', 'Navoi', '2025-02-15', '2025-02-16', 5, 5, 2),
    ('Andijan', 'Khiva', '2025-02-18', '2025-02-19', 6, 5, 1),
    ('Navoi', 'Tashkent', '2025-02-20', '2025-02-21', 7, 4, 1),
    ('Khiva', 'Samarkand', '2025-02-22', '2025-02-23', 8, 3, 2),
    ('Tashkent', 'Bukhara', '2025-02-25', '2025-02-26', 9, 4, 2),
    ('Fergana', 'Andijan', '2025-03-01', '2025-03-02', 10, 1, 1);

INSERT INTO Driver (Firstname, Lastname, Phone, Email, LicenseNumber) 
VALUES 
    ('Jane', 'Smith', '555-8765', 'janesmith@email.com', 'DL123456'),
    ('John', 'Doe', '555-4321', 'johndoe@email.com', 'DL234567'),
    ('Alice', 'Johnson', '555-9876', 'alicejohnson@email.com', 'DL345678'),
    ('Bob', 'Williams', '555-5432', 'bobwilliams@email.com', 'DL456789'),
    ('Charlie', 'Brown', '555-6789', 'charliebrown@email.com', 'DL567890'),
    ('David', 'Davis', '555-1111', 'daviddavis@email.com', 'DL678901'),
    ('Eva', 'Wilson', '555-2222', 'evawilson@email.com', 'DL789012'),
    ('Frank', 'Martinez', '555-3333', 'frankmartinez@email.com', 'DL890123'),
    ('Grace', 'Taylor', '555-4444', 'gracetaylor@email.com', 'DL901234'),
    ('Henry', 'Moore', '555-5555', 'henrymoore@email.com', 'DL012345');

INSERT INTO Assistant (Firstname, Lastname, Phone, Email) 
VALUES 
    ('Mark', 'Johnson', '555-4321', 'markjohnson@email.com'),
    ('Emily', 'Davis', '555-6789', 'emilydavis@email.com'),
    ('Sophia', 'Martinez', '555-9876', 'sophiamartinez@email.com'),
    ('Lucas', 'Taylor', '555-1234', 'lucastaylor@email.com'),
    ('Ava', 'Wilson', '555-2468', 'avawilson@email.com'),
    ('Mason', 'Moore', '555-1357', 'masonmoore@email.com'),
    ('Isabella', 'Lee', '555-3698', 'isabellalee@email.com'),
    ('Ethan', 'White', '555-7410', 'ethanwhite@email.com'),
    ('Lily', 'Clark', '555-8520', 'lilyclark@email.com'),
    ('James', 'Harris', '555-9632', 'jamesharris@email.com');


INSERT INTO Lorry (Model, LicensePlate, Capacity, ServiceStatusId) 
VALUES 
    ('Volvo FH16', 'ABC1234', 50000, 1),
    ('Mercedes Actros', 'XYZ5678', 55000, 2),
    ('Scania R-Series', 'LMN2345', 60000, 1),
    ('MAN TGX', 'OPQ3456', 65000, 1),
    ('Renault T-Series', 'DEF6789', 70000, 2),
    ('DAF XF', 'GHI7890', 72000, 1),
    ('Iveco Stralis', 'JKL8901', 48000, 2),
    ('Freightliner Cascadia', 'MNO9012', 53000, 1),
    ('Kenworth T680', 'PQR1234', 68000, 1),
    ('Peterbilt 579', 'STU2345', 75000, 2);

INSERT INTO Container (Capacity, CouplingStatusId) 
VALUES 
    (10000, 1),
    (12000, 2),
    (15000, 1),
    (18000, 1),
    (20000, 1),
    (25000, 2),
    (30000, 1),
    (35000, 2),
    (40000, 2),
    (50000, 1);

INSERT INTO TransportUnit (UnitStatusId, LorryId, DriverId, AssistantId, ContainerId) 
VALUES 
    (1, 21, 1, 1, 1),
    (2, 22, 2, 2, 2),
    (1, 23, 3, 3, 3),
    (1, 24, 4, 4, 4),
    (2, 25, 5, 5, 5),
    (2, 26, 6, 6, 6),
    (1, 27, 7, 7, 7),
    (2, 28, 8, 8, 8),
    (1, 29, 9, 9, 9),
    (1, 30, 10, 10, 10);

INSERT INTO Load (ProductTypeId, LoadSizeId, JobId, TransportUnitId) 
VALUES 
    (1, 1, 31, 21),
    (2, 2, 32, 22),
    (1, 3, 33, 23),
    (2, 1, 34, 24),
    (1, 2, 35, 25),
    (2, 3, 36, 26),
    (1, 1, 37, 27),
    (2, 2, 38, 28),
    (1, 3, 39, 29),
    (2, 1, 40, 30);

