-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * 
FROM CUSTOMERS 
WHERE Email = 'smac@kinetecoinc.com';

Insert into Customers(FirstName, LastName, Email)
Values('Sam', 'McAdams', 'smac@kinetecoinc.com');

SELECT * 
FROM CUSTOMERS 
WHERE Email = 'smac@kinetecoinc.com';

Insert into Reservations(CustomerID, Date, PartySize)
Values(102,'2022-08-12 18:00:00', 5);

Select Customers.FirstName, Customers.LastName, Customers.Email,
Reservations.Date, Reservations.PartySize
From Customers
Join Reservations
ON Customers.CustomerID = Reservations.CustomerID
where Customers.Email='smac@kinetecoinc.com';