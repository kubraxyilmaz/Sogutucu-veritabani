-- Valentina 10 SQL dump --
----------------------------------------------------
;

-- Create database
-- Note - the database creation will be skipped in case of database exists
-- But SET PROPERTY will be applied anyway
----------------------------------------------------
;

CREATE DATABASE IF NOT EXISTS "Sogutucu" WITH 
SET PROPERTY 
	"Mode", 
	"IdentsCaseSensitive", 
	"SegmentSize", 
	"SchemaVersion", 
	"DateTimeFormat", 
	"DateSeparator", 
	"TimeSeparator", 
	"KeyDelimiter", 
	"LocaleName", 
	"StorageEncoding", 
	"FrenchCollation", 
	"AlternateHandling", 
	"CaseFirst", 
	"CaseLevel", 
	"NormalizationMode", 
	"Strength", 
	"HiraganaQuaternaryMode", 
	"NumericCollation" 
of DATABASE  TO 
	'kDsc_Dat_Blb_Ind', 
	false, 
	32768, 
	1, 
	'kDMY', 
	'.', 
	':', 
	'.', 
	'tr_TR', 
	'UTF-16', 
	'kOff', 
	'kNonIgnorable', 
	'kOff', 
	'kOff', 
	'kOff', 
	'kTertiary', 
	'kOff', 
	'kOff';


;


USE "Sogutucu";



-- Dump for 'Internet_Kullanicisi' table
----------------------------------------------------
;

CREATE TABLE "Internet_Kullanicisi" (
	"Kullanici_adi" VARCHAR (2044)  NOT NULL,
	"sifre" DOUBLE (15,6)  NOT NULL,
	"KullaniciId" VARCHAR (2044)  NOT NULL); 





-- Dump for 'Sogutucu' table
----------------------------------------------------
;

CREATE TABLE "Sogutucu" (
	"SicilNo" DOUBLE (15,6)  NOT NULL,
	"marka" VARCHAR (2044)  NOT NULL,
	"seriNo" DOUBLE (15,6)  NOT NULL); 






-- Dump for 'Internet_Kullanicisi' table data
----------------------------------------------------
;






-- Dump for 'Sogutucu' table data
----------------------------------------------------
;




 

-- Dump for 'lnk_Internet_Kullanicisi_Sogutucu' link
----------------------------------------------------
;

CREATE BINARY LINK "lnk_Internet_Kullanicisi_Sogutucu" ON TABLES ("Internet_Kullanicisi", "Sogutucu") AS 1 TO 1 ON DELETE RESTRICT OWNER "Internet_Kullanicisi"; 





-- Constraints and Indexes --
----------------------------------------------------

;
ALTER TABLE "Internet_Kullanicisi" ADD CONSTRAINT "unique_Kullanici_adi" UNIQUE "unique_Kullanici_adi" USING DEFAULT ( "Kullanici_adi" );
ALTER TABLE "Internet_Kullanicisi" ADD CONSTRAINT "unique_sifre" UNIQUE "unique_sifre" USING DEFAULT ( "sifre" );
ALTER TABLE "Internet_Kullanicisi" ADD CONSTRAINT "unique_KullaniciId" UNIQUE "unique_KullaniciId" USING DEFAULT ( "KullaniciId" );
ALTER TABLE "Sogutucu" ADD CONSTRAINT "unique_marka" UNIQUE "unique_marka" USING DEFAULT ( "marka" );
ALTER TABLE "Sogutucu" ADD CONSTRAINT "unique_seriNo" UNIQUE "unique_seriNo" USING DEFAULT ( "seriNo" );


-- Dump for 'lnk_Internet_Kullanicisi_Sogutucu' link data
----------------------------------------------------
;


