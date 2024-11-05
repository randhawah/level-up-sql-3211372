-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (Select BookID From Books Where Barcode = '6435968624')
                AND ReturnedDate IS NULL;

UPDATE Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (Select BookID From Books Where Barcode = '5677520613')
                AND ReturnedDate IS NULL;

UPDATE Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (Select BookID From Books Where Barcode = '8730298424')
                AND ReturnedDate IS NULL;


SELECT Books.Barcode from Books
Join Loans ON Books.BookID = Loans.BookID
where Loans.ReturnedDate = '2022-07-05';