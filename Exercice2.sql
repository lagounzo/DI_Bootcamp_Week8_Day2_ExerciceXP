-- Dans la base de données dvdrental, écrivez une requête pour sélectionner toutes les colonnes de la table « client »

-- SELECT * FROM customer;

-- 2.afficher les noms ( first_name , last_name ) en utilisant un alias nommé « full_name ».

-- SELECT (first_name,last_name) AS fullname FROM customer;

--3.Écrivez une requête pour sélectionner tous les create_date de la table « client » (il ne doit pas y avoir de doublons).

-- SELECT DISTINCT create_date FROM customer;

-- 4.tous les détails du client à partir de la table des clients, elle doit être affichée dans l'ordre décroissant de leur prénom.

/*SELECT 
store_id,
first_name,
last_name,
email,
address_id,
activebool,
create_date,
last_update,
active
	FROM customer  ORDER BY first_name DESC; */
	
/*5. obtenir l'ID du film, le titre, la description, l'année de sortie et le tarif 
de location par ordre croissant en fonction de leur tarif de location.*/

/*SELECT 
title,
description,
release_year,
rental_rate
	FROM film ORDER BY rental_rate ASC;*/

/* 6. obtenir l'adresse et le numéro de téléphone de tous les clients vivant dans le district
du Texas, ces détails peuvent être trouvés dans le tableau "adresse".*/

-- SELECT address,address2,phone FROM address;

--7. requête pour récupérer tous les détails du film où l'identifiant du film est 15 ou 150.

-- SELECT * FROM film WHERE film_id = 15 or film_id = 150;
SELECT * FROM film WHERE film.title = 'invictus';

/*8 requête d'obtenir l'ID du film que vous aimez, le titre, la description,la durée et le tarif
de location, ces détails peuvent être trouvés dans le tableau "film".*/

SELECT 
film_id,
title,
description,
rental_duration,
rental_rate
	FROM film WHERE film_id = 50; 

/*9 Peut-être avez-vous fait une erreur dans l'orthographe du nom. Écrivez une 
requête pour obtenir l'ID du film, le titre, la description, la durée et le tarif 
de location de tous les films commençant par les deux premières lettres de votre film préféré.*/

SELECT 
film_id,
title,
description,
length,
rental_rate
	FROM film WHERE film.title LIKE 'in%';

-- 10.Écrivez une requête qui trouvera les 10 films les moins chers.

SELECT * FROM film ORDER BY rental_rate LIMITE 10;









