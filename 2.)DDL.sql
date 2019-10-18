--aboneler table

CREATE TABLE aboneler(
    abo_id INT,
    abo_adi_soyadi VARCHAR(255),
    abo_tel_no VARCHAR(255),
    abo_ev_adres VARCHAR(255),
    abo_is_adres VARCHAR(255),
    abo_il VARCHAR(255),
    abo_kimlik_seri_no INT,
    abo_sec_tarife VARCHAR(255),
    abo_yurt_disina_istiyor_mu VARCHAR(255),
    abo_bayi VARCHAR(255),
    abo_acilis_tarihi VARCHAR(255),
    abo_operator VARCHAR(255),
    PRIMARY KEY(abo_id)
)

-- abo_web table

CREATE TABLE abo_web(
    abo_id INT,
    abo_adi_soyadi VARCHAR(255),
    abo_kull_adi VARCHAR(255),
    abo_sifre VARCHAR(255),
    abo_en_son_girisi VARCHAR(255),
    abo_ayda_giris_sayisi INT
)

--abo_fatura_bilgileri table

CREATE TABLE abo_fatura_bilgileri(
    abo_id INT,
    abo_adi_soyadi VARCHAR(255),
    abo_ayda_konustugu_dakika INT,
    abo_attigi_mesaj_sayisi INT,
    abo_son_odeme_tarihi VARCHAR(255),
    odedi_mi VARCHAR(255),
    odemedigi_ay_sayisi INT,
    PRIMARY KEY(abo_adi_soyadi)
)

--bayiler table

CREATE TABLE bayiler(
    bayi_bolge VARCHAR(255),
    bayi_adi VARCHAR(255),
    bayi_sahibi_adi_soyadi VARCHAR(255),
    bayi_adres VARCHAR(255),
    bayi_il VARCHAR(255),
    bayi_telefon VARCHAR(255),
    bayi_fax VARCHAR(255),
    PRIMARY KEY(bayi_adi)
)

--bolge_bayilikleri table

CREATE TABLE bolge_bayilikleri(
    bayi_bolge VARCHAR(255),
    bayi_firma_adi VARCHAR(255),
    bayi_bolge_mudur_adi_ve_soyadi VARCHAR(255),
    bayi_adres VARCHAR(255),
    bayi_telefon VARCHAR(255),
    bayi_fax VARCHAR(255),
    PRIMARY KEY(bayi_bolge)
)

--faturali_tarifeler table

CREATE TABLE faturali_tarifeler(
    operator_adi VARCHAR(255),
    dakikada_konusma_ucreti FLOAT,
    sms_basina_ucret FLOAT,
    tarifeye_ek VARCHAR(255),
    PRIMARY KEY(operator_adi)
)

--faturasiz tarifeler table

CREATE TABLE faturasiz_tarifeler(
    operator_adi VARCHAR(255),
    tarife_ucreti FLOAT,
    tarife_ozellikleri VARCHAR(255),
    tarife_sart VARCHAR(255),
    PRIMARY KEY(operator_adi)
)