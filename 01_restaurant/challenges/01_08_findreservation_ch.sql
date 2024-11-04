-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
FROM Customers
JOIN Reservations
ON Customers.CustomerID = Reservations.CustomerID
WHERE LastName Like 'St%'
AND Reservations.PartySize = 4
AND Reservations.Date >= '2022-06-14';
