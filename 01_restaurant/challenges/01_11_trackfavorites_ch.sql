-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT * 
FROM Customers 
WHERE FirstName = 'Loretta' and LastName = 'Hundey';

UPDATE Customers 
  SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad') 
  WHERE FirstName = 'Loretta' and LastName = 'Hundey';

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name 
FROM Customers 
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;