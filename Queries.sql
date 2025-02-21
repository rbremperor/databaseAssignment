SELECT c.Firstname, c.Lastname, w.LocationId
FROM Customer c
JOIN Job j ON c.id = j.CustomerId
JOIN Warehouse w ON j.WarehouseId = w.id;


SELECT j.id AS JobId, j.startLocation, j.destination, c.Firstname, c.Lastname
FROM Job j
JOIN Customer c ON j.CustomerId = c.id
WHERE c.CategoryId = 1 AND j.PaymentStatusId = 1;



UPDATE Customer
SET Phone = '987-654-3210'
WHERE id = 5;


SELECT j.id AS JobId, j.startLocation, j.destination, c.Firstname, c.Lastname
FROM Job j
JOIN Customer c ON j.CustomerId = c.id
WHERE j.pickupDate BETWEEN '2025-02-02' AND '2025-03-02'
AND c.CategoryId = 2;


SELECT j.id AS JobId, 
       j.startLocation, 
       j.destination, 
       c.Firstname, 
       c.Lastname, 
       w.ContactNumber
FROM Job j
JOIN Customer c ON j.CustomerId = c.id
JOIN Warehouse w ON j.WarehouseId = w.id
JOIN Address a ON w.LocationId = a.id
WHERE a.City IN ('Tashkent', 'Samarkand', 'Bukhara')
  AND j.startLocation IN ('Tashkent', 'Samarkand', 'Bukhara');


SELECT c.Firstname, c.Lastname, a.City, COUNT(j.id) AS NumberOfJobs
FROM Job j
JOIN Customer c ON j.CustomerId = c.id
JOIN Warehouse w ON j.WarehouseId = w.id
JOIN Address a ON w.LocationId = a.id
GROUP BY c.Firstname, c.Lastname, a.City;


SELECT c.Firstname, c.Lastname, COUNT(j.id) AS NumberOfJobs
FROM Customer c
JOIN Job j ON c.id = j.CustomerId
GROUP BY c.Firstname, c.Lastname
ORDER BY NumberOfJobs DESC, c.Lastname ASC;


SELECT c.Firstname, c.Lastname, a.City, COUNT(j.id) AS NumberOfJobs
FROM Job j
JOIN Customer c ON j.CustomerId = c.id
JOIN Warehouse w ON j.WarehouseId = w.id
JOIN Address a ON w.LocationId = a.id
GROUP BY c.Firstname, c.Lastname, a.City
HAVING COUNT(j.id) > 3;
