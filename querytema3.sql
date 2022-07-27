-- Update the status of one order

UPDATE Orders SET status='Finished' 
WHERE ID=1;

-- Add comments to one order

Update Orders SET comments=if(comments IS NULL, 'Ramburs', CONCAT(comments, 'RAMBURS'))-- SAU comments='Ramburs' daca se vrea inlocuirea totala a comentariului
WHERE ID=1;

-- View all customers

SELECT username, last_name, first_name FROM Customers;
-- SAU
SELECT * FROM Customers;

-- View all orders for the third customer

SELECT * FROM Orders WHERE customer_id=3;

-- When placing an order update the stock for the products
-- try to implement with a small number of queries and explain your choice
UPDATE Products p 
JOIN orderdetails od
on p.code=od.product_code
SET p.stock=p.stock - od.quantity
WHERE p.code=(SELECT product_code FROM orderdetails WHERE ID=(SELECT MAX(ID) FROM orderdetails));

-- trebuie adaugata dupa fiecare insert facut in orderdetails


