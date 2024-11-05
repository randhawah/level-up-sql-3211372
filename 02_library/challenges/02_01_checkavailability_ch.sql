-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select Count(*)
from Books 
where Title = 'Dracula';

select Count(*)
from Loans 
Join Books
ON Loans.BookID = Books.BookID
where Books.Title = 'Dracula'
and Loans.ReturnedDate is null;

select
(select Count(*)
from Books 
where Title = 'Dracula')
-
(select Count(*)
from Loans 
Join Books
ON Loans.BookID = Books.BookID
where Books.Title = 'Dracula'
and Loans.ReturnedDate is null) as 'Books Available to Loan';