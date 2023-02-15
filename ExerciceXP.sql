/* Ajoutez les éléments suivants au tableau des éléments */

CREATE table items( 
id_itmes serial primary KEY,
	name_items VARCHAR (50) not null,
	prix_items INTEGER not null
	
);

INSERT INTO items(name_items,prix_items)
VALUES
('Petit bureau',100),
('Grand bureau',300),
('Ventilateur',80);

/****table customer*****/

CREATE table customers(
id_customers serial primary KEY,
	name_customers varchar (50) not null,
	prenom_customers varchar (50)
);
/* Ajoutez 5 nouveaux clients à la table des clients :*/

INSERT INTO customers(name_customers,prenom_customers)
VALUES
('Greg','Jones'),
('Sandra','Jones'),
('Scott','Scott'),
('Trevor','Vert'),
('Mélanie','Johnson');

/************** DAY2***********/

-- Utilisez SQL pour obtenir les éléments suivants à partir de la base de données :
-- 1. Tous les articles, classés par prix (du plus bas au plus élevé).

SELECT * FROM items ORDER BY prix_items ASC;

--2. Articles dont le prix est supérieur à 80 (80 inclus), classés par prix (du plus élevé au plus bas).

SELECT * FROM items WHERE prix_items >= 80 ORDER BY prix_items DESC;

--3. Les 3 premiers clients par ordre alphabétique du prénom (AZ) – exclure la colonne clé primaire des résultats.

SELECT * FROM customers ORDER BY prenom_customers LIMIT 3;

--4. Tous les noms de famille (pas d'autres colonnes !), dans l'ordre alphabétique inverse (ZA)

SELECT name_customers FROM customers ORDER BY name_customers DESC;