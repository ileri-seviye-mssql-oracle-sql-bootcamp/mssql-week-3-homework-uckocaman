-- Sehir ismini de yazdýrmaya çalýþýrken aþaðýdaki gibi bir hata aldým.
-- Conversion failed when converting the nvarchar value 'Kocaeli' to data type int.
-- Derste kullanýcý tablosuna 12088 KullanýcýKodlu kaydý eklerken sehir kolonuna sehir id vermek yerine direk Kocaeli yazdýðýmýz için bu hatayý aldýk.


-- Hatalý kayýt olmasaydý Sorgu 1'i çalýþtýrmamýz gerekecekti ancak hatalý kayýt olduðundan sorgu 2'y, çalýþtýrmalýyýz.

-- SORGU 1
SELECT TOP 1 K.sehir, COUNT(*) AS [3029 ÜRÜNÜNÜ ALIÞ ADEDÝ] FROM [tblSiparis] S
	INNER JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblSehir SE ON K.sehir = SE.Id
	WHERE SD.urunKod = 3029
	GROUP BY K.sehir
	ORDER BY COUNT(*) DESC;

-- SORGU 2 
SELECT TOP 1 K.sehir, SE.Isim, COUNT(*) AS [3029 ÜRÜNÜNÜ ALIÞ ADEDÝ] FROM [tblSiparis] S
	INNER JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblSehir SE ON K.sehir = SE.Id
	WHERE SD.urunKod = 3029 AND K.kullaniciKod != 12088
	GROUP BY K.sehir, SE.Isim
	ORDER BY COUNT(*) DESC;