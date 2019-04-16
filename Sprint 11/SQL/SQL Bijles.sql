/*
Maak een overzicht met de naam van de klant en een aantal orders
*/

SELECT c.CompanyName, COUNT(o.CustomerID) [Aantal Orders], 
MAX(o.OrderDate) AS 'Datum laatste Geplaatste Order', 
MIN(o.OrderDate) AS 'Datum eerste Geplaatste Order'
FROM Customers c
LEFT OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
HAVING MAX(o.OrderDate) IS NULL
ORDER BY 2 DESC


/*
Toon alle klanten die in hetzelfde land wonden als Alfred Futterkiste
*/

SELECT * FROM Customers
WHERE country = 
(
SELECT Country
FROM Customers
WHERE CompanyName = 'Alfreds Futterkiste'
)

/* 
Toon alle informatie van de klanten die meer oders hebben geplaatst dan Alfreds Futterkiste
*/
SELECT cust.CompanyName, COUNT(ord.orderid) 
FROM customers cust
INNER JOIN Orders ord 
ON cust.CustomerID = ord.CustomerID
GROUP BY cust.CompanyName
HAVING COUNT(ord.orderid) > 

(/* Hoeveel Oders heeft Alfreds Futterkiste
*/
Select COUNT(orderid)
FROM Orders o
WHERE o.CustomerID = 

(/* 
Wat is de ID van Alfreds Futterkiste
*/

SELECT c.CustomerID
FROM Customers c
WHERE c.CompanyName = 'Alfreds Futterkiste'))


/* 
Toon de volledige naam van alle werknemers die ouder zijn dan hun manager.
toon ook de volledige naam van de manager en de geboortedatum van zowel de medewerker als de manager.
*/

SELECT e.FirstName + ' ' + e.LastName [Naam Werknemer] , m.FirstName + ' ' + m.LastName [Naam Manager]
FROM Employees e
LEFT JOIN Employees m ON m.EmployeeID = e.ReportsTo
WHERE e.BirthDate > m.BirthDate
ORDER BY m.FirstName



