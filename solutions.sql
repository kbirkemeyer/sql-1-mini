SELECT * FROM artist;

SELECT first_name, last_name, country
FROM employee;

SELECT name, composer, milliseconds
FROM track
WHERE milliseconds > 299000;

SELECT COUNT (milliseconds) FROM track
WHERE milliseconds > 299000;

Black Diamond Section
1. Find the average length of all tracks in milliseconds 
SELECT AVG (milliseconds) from track;

2. Find the number of invoices in the USA 
SELECT COUNT(invoice_id) FROM invoice WHERE billing_country = 'USA';

3. Make a list of all the First Names of Customers that contain an 'a'
SELECT first_name FROM customer WHERE first_name LIKE '%a%';

4. Make a list of the 10 longest tracks
SELECT * FROM track
    ORDER BY milliseconds DESC
    LIMIT 10;

5. Make a list of the 20 shortest tracks
SELECT * FROM track
    ORDER BY milliseconds
    LIMIT 20;

6. Find all the customers that live in California or Washington
SELECT * from customer
WHERE state IN ('WA', 'CA');

7.Find all the customers who don't live in California, Washington, Utah, Florida, or Arizona (Use IN keyword)
SELECT * FROM customer
WHERE state NOT IN ('CA', 'WA', 'UT', 'FL', 'AZ');

8. Insert an artist to the database
INSERT INTO artist
(name, asrtist id)
VALUES
('Beans Brown Hound Band', 9004);

9. Insert yourself as a customer to the database
INSERT INTO customer
(state, country, postal_code, phone, first_name, last_name, company, address, city)
VALUES ('AZ', 'USA', '85297', '801-502-5841', 'Katie', 'Birkemeyer', 'Brown Hound Brewery', '42 Wallaby Way', 'Sydney');

10. Find a list of all Playlists that start with Classical
SELECT * FROM playlist
WHERE name LIKE 'Classical%';