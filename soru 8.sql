SELECT TOP 1 S.kullaniciKod, K.isim, K.soyad,  COUNT(*) AS [SÝPARÝS SAYISI] FROM [tblKullanici] K
	INNER JOIN [tblSiparis] S ON K.kullaniciKod = S.kullaniciKod
	WHERE LOWER(K.isim) LIKE 'a%' AND LOWER(K.soyad) LIKE '%ak%'
	GROUP BY S.kullaniciKod, K.isim, K.soyad
	ORDER BY COUNT(*) DESC;