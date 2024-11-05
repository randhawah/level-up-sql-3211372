-- Prepare a report of the library patrons
-- who have checked out the fewest books.

Select  Count(Loans.LoanID) as LoansCount, 
        Loans.PatronID, 
        Patrons.FirstName,
        Patrons.LastName,
        Patrons.Email
From Loans
Join Patrons ON Loans.PatronID = Patrons.PatronID
Group By Loans.PatronID
ORDER BY LoansCount
LIMIT 10;