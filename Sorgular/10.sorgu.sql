SELECT aboneler.abo_id,
	   abo_web.abo_adi_soyadi,
	   abo_web.abo_kull_adi,
	   abo_web.abo_sifre,
	   abo_web.abo_en_son_girisi,
	   MAX(abo_web.abo_ayda_giris_sayisi),
	   aboneler.abo_tel_no,
	   aboneler.abo_ev_adres,
	   aboneler.abo_is_adres,
	   aboneler.abo_il,
	   aboneler.abo_kimlik_seri_no,
	   aboneler.abo_sec_tarife,
	   aboneler.abo_yurt_disina_istiyor_mu,
	   aboneler.abo_bayi,
	   aboneler.abo_acilis_tarihi,
	   aboneler.abo_operator
FROM aboneler
INNER JOIN abo_web
ON abo_web.abo_id = aboneler.abo_id