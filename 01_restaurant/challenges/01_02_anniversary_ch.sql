-- Create a table in the database to store customer
-- responses to our anniversary invitation.
select * from Customers;
select * from Reservations;
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes
select CustomerID, PartySize from Reservations;