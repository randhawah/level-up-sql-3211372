-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

Select Title, Author, Published
From Books
Where Published BETWEEN 1890 and 1899
AND BookID not in ( Select BookID 
                    From Loans
                    Where ReturnedDate is NULL);