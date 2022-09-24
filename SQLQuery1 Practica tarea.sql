CREATE DATABASE Northwind;
USE Northwind;

---1. Utilice la función DATEDIFF para obtener la diferencia en días entre OrderData y RequiredDate de la tabla orders.
SELECT DATEDIFF(Day, OrderDate,RequiredDate ) Diferencia_de_dias FROM Orders;

---2. Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla orders.


SELECT  COUNT (*) Numero_de_cliente ,MIN(OrderDate) Primera_fecha, MAX(OrderDate) Fecha_mas_reciente FROM Orders;


---3. Mostrar companyName de la tabla customers, en donde City sea diferente de Country y country no sea Mexico.

SELECT CompanyName FROM Customers WHERE City NOT LIKE 'México%';



---4. Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde los pedidos sean mayores a 5 y menores a 10
---(Muestre 3 resultados, el primero utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).

SELECT EmployeeID FROM Orders
WHERE EmployeeID >=5 AND EmployeeID <=10;

SELECT EmployeeID FROM Orders
WHERE EmployeeID BETWEEN 5 AND 10;

SELECT EmployeeID FROM Orders
WHERE EmployeeID NOT IN(1,2,3,4,10);

---5. Mostrar el código del cliente y la fecha que realizo la orden de la tabla orders, deberá mostrar solo las del año 1998,
---utilice el operador LIKE y la función YEAR.

SELECT OrderID, OrderDate FROM Orders
WHERE YEAR(OrderDate) LIKE '1998%'



