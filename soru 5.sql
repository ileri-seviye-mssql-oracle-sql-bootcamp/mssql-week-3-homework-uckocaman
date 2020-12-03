SELECT U.* FROM [tblSiparis] S
	INNER JOIN [tblSiparisDurum] SDK ON S.siparisDurumKod = SDK.siparisDurumKod
	INNER JOIN [tblSiparisDetay] SD ON S.faturaKod = SD.faturaKod 
	INNER JOIN [tblUrun] U ON SD.urunKod = U.urunKod
	WHERE LOWER(SDK.aciklama) LIKE '%iptal%';