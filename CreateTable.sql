-- Create Address Table
CREATE TABLE Address (
    id SERIAL PRIMARY KEY,
    Street VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

-- Create Category Table
CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(100)
);

-- Create LoadSize Table
CREATE TABLE LoadSize (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(50)
);

-- Create ProductType Table
CREATE TABLE ProductType (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(100)
);

-- Create UnitStatus Table
CREATE TABLE UnitStatus (
    id SERIAL PRIMARY KEY,
    Status VARCHAR(100)
);

-- Create ServiceStatus Table
CREATE TABLE ServiceStatus (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(100)
);

-- Create CouplingStatus Table
CREATE TABLE CouplingStatus (
    id SERIAL PRIMARY KEY,
    Status VARCHAR(100)
);
-- Create Driver Table
CREATE TABLE Driver (
    id SERIAL PRIMARY KEY,
    Firstname VARCHAR(100),
    Lastname VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    LicenseNumber VARCHAR(50)
);

-- Create Assistant Table
CREATE TABLE Assistant (
    id SERIAL PRIMARY KEY,
    Firstname VARCHAR(100),
    Lastname VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);
-- Create PaymentStatus Table
CREATE TABLE PaymentStatus (
    id SERIAL PRIMARY KEY,
    Status VARCHAR(100)
);



-- Tables with foreign keys
-- Create Customer Table
CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    Firstname VARCHAR(100),
    Lastname VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    AddressId INT,
    CategoryId INT,
    FOREIGN KEY (AddressId) REFERENCES Address(id),
    FOREIGN KEY (CategoryId) REFERENCES Category(id)
);

-- Create Warehouse Table
CREATE TABLE Warehouse (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(100),
	LocationId INT,
    ContactNumber VARCHAR(20),
	FOREIGN KEY (LocationId) REFERENCES Address(id)
);

-- Create Job Table
CREATE TABLE Job (
    id SERIAL PRIMARY KEY,
    startLocation VARCHAR(255),
    destination VARCHAR(255),
    pickupDate DATE,
    deliveryDate DATE,
    CustomerId INT,
    WarehouseId INT,
    PaymentStatusId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customer(id),
    FOREIGN KEY (WarehouseId) REFERENCES Warehouse(id),
    FOREIGN KEY (PaymentStatusId) REFERENCES PaymentStatus(id)
);

-- Create Load Table
CREATE TABLE Load (
    id SERIAL PRIMARY KEY,
    ProductTypeId INT,
    LoadSizeId INT,
    JobId INT,
    TransportUnitId INT,
    FOREIGN KEY (ProductTypeId) REFERENCES ProductType(id),
    FOREIGN KEY (LoadSizeId) REFERENCES LoadSize(id),
    FOREIGN KEY (JobId) REFERENCES Job(id),
    FOREIGN KEY (TransportUnitId) REFERENCES TransportUnit(id)
);

-- Create TransportUnit Table
CREATE TABLE TransportUnit (
    id SERIAL PRIMARY KEY,
    UnitStatusId INT,
    LorryId INT,
    DriverId INT,
    AssistantId INT,
    ContainerId INT,
    FOREIGN KEY (UnitStatusId) REFERENCES UnitStatus(id),
    FOREIGN KEY (LorryId) REFERENCES Lorry(id),
    FOREIGN KEY (DriverId) REFERENCES Driver(id),
    FOREIGN KEY (AssistantId) REFERENCES Assistant(id),
    FOREIGN KEY (ContainerId) REFERENCES Container(id)
);


-- Create Lorry Table
CREATE TABLE Lorry (
    id SERIAL PRIMARY KEY,
    Model VARCHAR(100),
    LicensePlate VARCHAR(50),
    Capacity INT,
    ServiceStatusId INT,
    FOREIGN KEY (ServiceStatusId) REFERENCES ServiceStatus(id)
);

-- Create Container Table
CREATE TABLE Container (
    id SERIAL PRIMARY KEY,
    Capacity INT,
    CouplingStatusId INT,
    FOREIGN KEY (CouplingStatusId) REFERENCES CouplingStatus(id)
);



