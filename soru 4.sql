SELECT SD.urunKod, U.urunAd, COUNT(*) AS [SÝPARÝÞ SAYISI] FROM [Dukkan].[dbo].[tblSiparis] AS S
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblUrun U ON SD.urunKod = U.urunKod
	WHERE S.siparisTarih BETWEEN '01.02.2007' AND '05.03.2014'
	GROUP BY SD.urunKod, U.urunAd
	ORDER BY COUNT(*) DESC;