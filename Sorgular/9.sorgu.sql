SELECT aboneler.abo_id,
	   abo_web.abo_adi_soyadi,
	   abo_web.abo_kull_adi,
	   abo_web.abo_sifre,
	   abo_web.abo_en_son_girisi,
	   abo_web.abo_ayda_giris_sayisi,
	   abo_fatura_bilgileri.abo_son_odeme_tarihi,
	   abo_fatura_bilgileri.abo_ayda_konustugu_dakika,
	   abo_fatura_bilgileri.abo_attigi_mesaj_sayisi,
	   abo_fatura_bilgileri.odedi_mi,
	   aboneler.abo_tel_no,
	   aboneler.abo_ev_adres,
	   aboneler.abo_is_adres,
	   aboneler.abo_il,
	   aboneler.abo_kimlik_seri_no,
	   aboneler.abo_sec_tarife,
	   aboneler.abo_yurt_disina_istiyor_mu,
	   aboneler.abo_bayi,
	   aboneler.abo_acilis_tarihi,
	   aboneler.abo_operator,
	   abo_fatura_bilgileri.abo_ayda_konustugu_dakika * faturali_tarifeler.dakikada_konusma_ucreti + abo_fatura_bilgileri.abo_attigi_mesaj_sayisi *
		faturali_tarifeler.sms_basina_ucret AS fatura_tutari,
		(abo_fatura_bilgileri.abo_ayda_konustugu_dakika * faturali_tarifeler.dakikada_konusma_ucreti + abo_fatura_bilgileri.abo_attigi_mesaj_sayisi *
		faturali_tarifeler.sms_basina_ucret)*1.08 AS gecikme_faizli  
FROM aboneler
INNER JOIN abo_fatura_bilgileri
ON aboneler.abo_id = abo_fatura_bilgileri.abo_id
INNER JOIN abo_web
ON abo_web.abo_adi_soyadi = aboneler.abo_adi_soyadi
INNER JOIN faturali_tarifeler
ON faturali_tarifeler.operator_adi = aboneler.abo_operator
WHERE aboneler.abo_operator = 'Zoom' AND abo_fatura_bilgileri.odedi_mi = 'Odemedi'