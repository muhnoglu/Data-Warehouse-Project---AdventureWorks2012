SELECT 
    dp.ProductID AS ÜrünKimliði, -- Ürün kimliði
    dp.NameProduct AS ÜrünAdý, -- Ürünün adý
    dp.LocationID AS ÜrünKonumu, -- Ürünün bulunduðu konum
    dp.Quantity AS StokMiktarý, -- Mevcut stok seviyesi
    dp.ReorderPoint AS KritikStokMikatrý -- Kritik stok seviyesi (Yeniden sipariþ noktasý)
FROM 
   DimProductt dp -- Ürünlerin bulunduðu tablo
WHERE 
    dp.Quantity <= dp.ReorderPoint -- Stok seviyesi kritik seviyeye eþit veya daha düþük olan ürünler
ORDER BY 
    dp.Quantity ASC;




