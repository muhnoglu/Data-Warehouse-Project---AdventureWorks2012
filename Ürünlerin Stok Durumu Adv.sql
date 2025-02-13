SELECT 
    p.ProductID AS ÜrünKimliði, -- Ürün kimliði
    p.Name AS ÜrünAdý, -- Ürünün adý
    pi.LocationID AS ÜrünKonumu, -- Ürünün bulunduðu konum
    pi.Quantity AS StokMiktarý, -- Mevcut stok seviyesi
    p.ReorderPoint AS KritikStokMikatrý -- Kritik stok seviyesi (Yeniden sipariþ noktasý)
FROM 
    Production.Product p -- Ürünlerin bulunduðu tablo
JOIN 
    Production.ProductInventory pi ON p.ProductID = pi.ProductID -- Ürün stoklarýnýn bulunduðu tablo
WHERE 
    pi.Quantity <= p.ReorderPoint -- Stok seviyesi kritik seviyeye eþit veya daha düþük olan ürünler
ORDER BY 
    pi.Quantity ASC;