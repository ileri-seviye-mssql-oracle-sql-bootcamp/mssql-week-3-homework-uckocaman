SELECT U.urunAd, K.isim, K.soyad FROM [tblSiparisDetay] SD
	INNER JOIN tblUrun U ON SD.urunKod = U.urunKod
	INNER JOIN [tblSiparis] SP ON SD.faturaKod = SP.faturaKod
	INNER JOIN tblKullanici K ON SP.kullaniciKod = K.kullaniciKod
	WHERE SD.[faturaKod] = (SELECT TOP 1 [faturaKod]
		FROM [Dukkan].[dbo].[tblSiparis]
		ORDER BY [toplam] DESC
		)