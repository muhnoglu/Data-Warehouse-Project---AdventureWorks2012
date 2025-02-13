SELECT 
    DATENAME(weekday, soh.OrderDate) AS [Order Day], 
    MONTH(soh.OrderDate) AS [Order Month], 
    YEAR(soh.OrderDate) AS [Order Year],
    SUM(sod.OrderQty) AS [Order Quantity] 
FROM 
    Sales.SalesOrderHeader soh
JOIN 
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY 
    DATENAME(weekday, soh.OrderDate), 
    DATEPART(weekday, soh.OrderDate), 
    MONTH(soh.OrderDate), 
    YEAR(soh.OrderDate)
ORDER BY 
    [Order Year], [Order Month], DATEPART(weekday, soh.OrderDate);


