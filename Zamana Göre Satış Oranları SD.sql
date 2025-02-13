
SELECT 
    DATENAME(weekday, fs.OrderDate) AS [Order Day], 
    MONTH(fs.OrderDate) AS [Order Month], 
    YEAR(fs.OrderDate) AS [Order Year],
    SUM(fs.OrderQty) AS [Order Quantity] 
FROM 
    [SalesDataMart].[dbo].[Fact_Saless] fs
GROUP BY 
    DATENAME(weekday, fs.OrderDate), 
    DATEPART(weekday, fs.OrderDate), 
    MONTH(fs.OrderDate), 
    YEAR(fs.OrderDate)
ORDER BY 
    [Order Year], [Order Month], DATEPART(weekday, fs.OrderDate);
