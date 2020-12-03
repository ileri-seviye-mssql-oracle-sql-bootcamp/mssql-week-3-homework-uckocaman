SELECT TOP 1 M. meslek, COUNT(*) AS [S�PAR�S ADED�] FROM tblSiparis AS S
	INNER JOIN [tblKullanici] K ON S.kullaniciKod = K.kullaniciKod
	INNER JOIN [tblMeslek] M ON K.meslekKod = M.meslekKod
	GROUP BY M.meslek
	ORDER BY COUNT(*) DESC; 