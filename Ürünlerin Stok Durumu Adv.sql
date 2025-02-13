SELECT 
    p.ProductID AS �r�nKimli�i, -- �r�n kimli�i
    p.Name AS �r�nAd�, -- �r�n�n ad�
    pi.LocationID AS �r�nKonumu, -- �r�n�n bulundu�u konum
    pi.Quantity AS StokMiktar�, -- Mevcut stok seviyesi
    p.ReorderPoint AS KritikStokMikatr� -- Kritik stok seviyesi (Yeniden sipari� noktas�)
FROM 
    Production.Product p -- �r�nlerin bulundu�u tablo
JOIN 
    Production.ProductInventory pi ON p.ProductID = pi.ProductID -- �r�n stoklar�n�n bulundu�u tablo
WHERE 
    pi.Quantity <= p.ReorderPoint -- Stok seviyesi kritik seviyeye e�it veya daha d���k olan �r�nler
ORDER BY 
    pi.Quantity ASC;