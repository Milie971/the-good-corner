-- SQLite
-- SQLite
DROP TABLE IF EXISTS ad;
DROP TABLE IF EXISTS category;


CREATE TABLE category
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VANCHAR (100)
);

CREATE TABLE ad 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title VARCHAR(100) NOT NULL,
	description TEXT,
	owner VARCHAR(100) NOT NULL,
	price FLOAT,
picture VARCHAR(100),
location VARCHAR(100),
createdAt DATE,
category_id INTEGER NOT NULL,
);
CONSTRAINT fk_ad_category,
FOREIGN KEY (category_id),
REFERENCES category(id)
);


INSERT INTO category (name) 
VALUES ("vêtements"), ("voiture"), ("autres");


INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Switch', 'Switch red and blue....', 'Emilie', 150, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.phonandroid.com%2Fnintendo-switch-mario-rouge-bleu-acheter-meilleur-prix.html&psig=AOvVaw2phitV-moh9qTORSiCDaIw&ust=1695827096722000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCICora_GyIEDFQAAAAAdAAAAABAH', 'Jaunay-clan','2023-09-18',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('VoitureMazda', 'Mazda Rouge', 'Larry', 15000, 'https://www.ecosia.org/images?q=mazda%20rouge&addon=safari&addonversion=4.2.1.51#id=CAE8034B6B7B2EA738452C8456A8456172AD53EC', 'Paris','2023-09-19',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Iphone13', 'couleur Bleu', 'Emilie', 800, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=iphone%2013%20bleu#id=88ADE6B120D91711DC2480C92CCAC74846060C5B', 'Bordeaux','2023-09-25',3);


INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('IpadPro', 'capacité 256GO', 'Victoria', 600,'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=ipad%20pro#id=E511A995403262A4908DCE680DC837F16FE894C3', 'Paris', '2023-10-01',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Spitz', 'Adulte de couleur noir', 'Emilie', 200, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=spitz%20noir', 'Lyon','2023-10-02',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Projecteur', 'de marque Samsung', 'Larry', 500, 'https://www.iacono.fr/fr/20681-samsung-sp-lsp3blaxxe.html', 'Bordeaux','2023-10-04',3);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Télé', '18 pouces', 'Larry', 500, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=télé', 'Lyon','2023-10-04',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Chat', 'Famille de chat, don', 'Larry', 0, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=chat', 'Poitiers','2023-10-05',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('EcouteursAirpods', 'Neuve modèle pro', 'Larry', 400, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=airpod%20pro', 'Bordeaux','2023-10-06',3);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('maisonF4', 'Maison de campagne  F4', 'Larry', 400000, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=Maison%20F4', 'Guadeloupe','2023-10-10',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VAlUES('Casquebeats', 'Edition Mickey', 'Victoria', 300.00, 'https://www.ecosia.org/images?addon=safari&addonversion=4.2.1.51&q=casque%20beats%20mickey', 'Japon','2023-10-11',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES ('Chapeau de paille', 'celui de luffy', 'Emilie', 200.50, 'https://www.ecosia.org/imagesq=chapeau%20de%20paille&addon=safari&addonversion=4.2.1.51#id=D4C88A6CAC7945D4403C86B688090A4F08FEF1BB', 'Japon','2023-10-11',3);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES ('Mickeyd', 'Disneyland Parisd', 'Emilied', 40, 'https://www.ecosia.org/images?q=peluche%20mickey%20collection&addon=safari&addonversion=4.2.1.51 ', 'Amériqued','2023-10-01',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES ('Ordinateurd', ' dans le magasin Boulangerd', 'Boulangerd', 200, 'https://www.fnac.com/PC-Portable-Gaming-Acer-Nitro-5-AN515-58-57GF-15-6-Intel-Core-i5-16-Go-RAM-512-Go-SSD-Noir/a17976933/w-4 ', 'Cergy','2023-10-01',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES ('Stitchd', 'Disneyd', 'Emilied', 40, ' https://www.shopdisney.fr/personnages-et-films/personnages/stitch?start=0&sz=24 ', 'Marne-la-valléed','2023-10-13',3);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES('sac à dos', 'QuickSilver', 'Belle', 20, 'https://www.zalando.fr/quiksilver-secret-sesh-sac-a-dos-black-qu152n03g-q11.html' , ' Cergy','2023-10-14',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES('Rulan', 'chat noir' , 'Laïna', 150, ' https://www.30millionsdamis.fr/actualites/article/19684-journee-mondiale-du-chat-noir-rendons-leur-leur-noblesse/ ','Orgeval','2023-10-16',2);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES('Lampe',  'pied bois, et coupole blanche', 'Laïna', 15, 'https://www.leroymerlin.fr/produits/decoration-eclairage/luminaire-interieur/lampe/lampe-sur-pied-lampe-de-salon/lampe-molu-h-34-5-cm-blanc-atmosphera-83650818.html ', 'Osny','2023-10-01',3 );

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES('Plaid 200 cm', 'Plaid fait main', 'Eloïse', 50, ' https://www.ksl-living.fr/plaids-laine/plaid-en-laine-merinos-grosses-mailles-tricot-fait-main-6-tailles-20-couleurs-basic-par-panapufa-6415.html ', 'Lyon','2023-10-01',1);

INSERT INTO ad (title, description, owner, price, picture, location, createdAt,category_id)
VALUES('12 tasses', 'collection dorée', 'Aryan', 'https://www.pinterest.fr/pin/112027109476414447/ ', 'Paris','2023-10-05',2);


--tout selectionné

SELECT *
FROM ad;

--Afficher toutes les annonces de Bordeaux
SELECT *
FROM ad
Where location= 'Bordeaux';


DELETE FROM ad WHERE price > 40;

-- afficher la moyenne des prix des annonces de la ville de paris 
SELECT AVG(price) AS moyenne_prix
From ad
WHERE location = 'Paris';

--Supprimer les annonces avec un prix supérieur à 400€
SELECT price
DELETE FROM ad
Where price > 400

--Mettre à jour les prix à partir d'une date 
UPDATE ad
SET price = 0.00
WHERE cratedAt = '2023-09-14';

--Moyenne global
SELECT location, AVG(price) AS average_price
FROM ad
GROUP BY location; 

-- affiche category voiture
SELECT a.title, a.description, a.owner, c.name
FROM ad AS a
LEFT JOIN category AS c
ON a.category_id=c.id
WHERE c.name = "vêtements";

SELECT a.title, a.description, a.owner, c.name
FROM ad AS a
LEFT JOIN category AS c
ON a.category_id=c.id
WHERE c.name = "voiture" OR c.name = "vêtements";

-- ou
SELECT a.title, a.description, a.owner, c.name
FROM ad AS a
LEFT JOIN category AS c
ON a.category_id=c.id
WHERE c.name  IN ("voiture", "vêtements");

SELECT a.title, a.description, a.owner, c.name
FROM ad AS a
LEFT JOIN category AS c
ON a.category_id=c.id
WHERE c.name = "autres"
GROUP BY c.name;

SELECT a.title, a.description, a.owner, c.name
FROM ad AS a
LEFT JOIN category AS c
ON a.category_id=c.id
WHERE c.name LIKE 'v%';
