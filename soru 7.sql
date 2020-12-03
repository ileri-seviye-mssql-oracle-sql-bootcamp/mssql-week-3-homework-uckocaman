-- Sehir ismini de yazd�rmaya �al���rken a�a��daki gibi bir hata ald�m.
-- Conversion failed when converting the nvarchar value 'Kocaeli' to data type int.
-- Derste kullan�c� tablosuna 12088 Kullan�c�Kodlu kayd� eklerken sehir kolonuna sehir id vermek yerine direk Kocaeli yazd���m�z i�in bu hatay� ald�k.


-- Hatal� kay�t olmasayd� Sorgu 1'i �al��t�rmam�z gerekecekti ancak hatal� kay�t oldu�undan sorgu 2'y, �al��t�rmal�y�z.

-- SORGU 1
SELECT TOP 1 K.sehir, COUNT(*) AS [3029 �R�N�N� ALI� ADED�] FROM [tblSiparis] S
	INNER JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblSehir SE ON K.sehir = SE.Id
	WHERE SD.urunKod = 3029
	GROUP BY K.sehir
	ORDER BY COUNT(*) DESC;

-- SORGU 2 
SELECT TOP 1 K.sehir, SE.Isim, COUNT(*) AS [3029 �R�N�N� ALI� ADED�] FROM [tblSiparis] S
	INNER JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblSehir SE ON K.sehir = SE.Id
	WHERE SD.urunKod = 3029 AND K.kullaniciKod != 12088
	GROUP BY K.sehir, SE.Isim
	ORDER BY COUNT(*) DESC;