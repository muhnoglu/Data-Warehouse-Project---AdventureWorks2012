SELECT 
    dp.ProductID AS �r�nKimli�i, -- �r�n kimli�i
    dp.NameProduct AS �r�nAd�, -- �r�n�n ad�
    dp.LocationID AS �r�nKonumu, -- �r�n�n bulundu�u konum
    dp.Quantity AS StokMiktar�, -- Mevcut stok seviyesi
    dp.ReorderPoint AS KritikStokMikatr� -- Kritik stok seviyesi (Yeniden sipari� noktas�)
FROM 
   DimProductt dp -- �r�nlerin bulundu�u tablo
WHERE 
    dp.Quantity <= dp.ReorderPoint -- Stok seviyesi kritik seviyeye e�it veya daha d���k olan �r�nler
ORDER BY 
    dp.Quantity ASC;




