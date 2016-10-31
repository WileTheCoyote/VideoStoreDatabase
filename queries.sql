# 1 - Show the contents of all tables
# (Display all tables individually)
Select * from customers;
Select * from rentals;
Select * from mediainventory;
Select * from movielibrary;
Select * from distributors;
Select * from moviecatalog;
select * from moviecredits;
select * from actors;

# Displays all contents from 3 tables together (Rentals, customers, movielibrary)
# This table lists all rentals, the details about the customer renting it, and the movie details
SELECT * FROM rentals, customers, movielibrary
WHERE (rentals.customerID = customers.customerID AND movielibrary.moviecode = rentals.moviecode);

# Displays all contents from 2 tables together (Distributor and Movie Catalog)
# This table lists all movie catalog info with the details about each distributor
SELECT * FROM distributors, moviecatalog
WHERE (distributors.distID = moviecatalog.distID);

# Displays all contents from 2 tables together (MovieCredits and Actors)
# this table lists all movie credit info appended with the details about each respective actor
SELECT * FROM moviecredits, actors
WHERE (actors.actorID = moviecredits.actorID);

# 2 -  Retrieve all of the customers' names, account numbers, and (street and zip code only)
SELECT FirstName, LastName, CustomerID, StreetAddress, Zip
FROM customers
ORDER BY customerID;

# 3 - Retrieve all of the DVDs rented in the last 30 days
SELECT rentals.moviecode, SetID, movielibrary.moviename, rentaldate
FROM rentals, movielibrary
WHERE (rentaldate > '2016-08-01' AND dvdorvideo = 1 AND  movielibrary.moviecode = rentals.moviecode)
ORDER BY rentaldate;

# 4 - Update a customer name to change their maiden names to married names.
UPDATE customers set lastname = 'Smith' where (customerID = '100005');

# 5 - Delete Customer
DELETE FROM customers WHERE customerID = '100002';

