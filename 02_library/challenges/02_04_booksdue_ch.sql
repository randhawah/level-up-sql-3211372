-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email
From Loans
Join Books ON Loans.BookID = Books.BookID
Join Patrons ON Loans.PatronID = Patrons.PatronID
Where Loans.DueDate = '2022-07-13'
AND Loans.ReturnedDate is NULL;