| | | | | | | |
|-|-|-|-|-|-|-|
|Table|Nom|Format|LongueurMax|Type|Règle de gestion|Exemple|
|Vehicule|id|nombre| |nombre|unique, non nul (PK)|1|
|Vehicule|kilometrage|nombre|6|Nombre| |20000|
|Vehicule|marque|alphanumérique| |chaine de caractères| |peugeot|
|Vehicule|numeroImmatriculation|alphanumérique|9|chaine de caractères| |AB-123-CD|
|Vehicule|coutLocation|nombre|9|nombre| |515.3|
|Vehicule|etatCarosserieSortie|alphabétique|15|chaine de caractères| |Acceptable|
|Vehicule|etatCarosserieSortie|alphabétique|15|chaine de caractères| |Parfait|
|Vehicule|idVehiculeEssence|nombre| |nombre|FK|1|
|Vehicule|idVehiculeElectrique|nombre| |nombre|FK|2|
| | | | | | | |
|VehiculeEssence|id|nombre| |nombre|unique, non nul (PK)|1|
|VehiculeEssence|niveauCarburantEntree|nombre|2|nombre|Supérieur ou égal à 0|20|
|VehiculeEssence|niveauCarburantSortie|nombre|2|nombre|Supérieur ou égal à 0|20|
|VehiculeEssence|etatMoteurThermiqueEntree|alphanumérique|15|chaine de caractères| |Acceptable|
|VehiculeEssence|etatMoteurThermiqueSortie|alphanumérique|15|chaine de caractères| |Acceptable|
| | | | | | | |
|VehiculeElectrique|id|nombre| |nombre|unique, non nul (PK)|1|
|VehiculeElectrique|niveauBatterieEntree|nombre|3|nombre|Supérieur ou égal à 0|20|
|VehiculeElectrique|niveauBatterieSortie|nombre|3|nombre|Supérieur ou égal à 0|20|
|VehiculeElectrique|etatMoteurElectriqueEntree|alphanumérique|15|chaine de caractères| |Acceptable|
|VehiculeElectrique|etatMoteurElectriqueSortie|alphanumérique|15|chaine de caractères| |Acceptable|
| | | | | | | |
|AgenceLocation|id|nombre| |nombre|unique, non nul (PK)|1|
|AgenceLocation|adresse|alphanumérique|255|chaine de caractères| |Rue des Faveyrolles|
|AgenceLocation|nom|alphabétique|50|chaine de caractères| |Arthur|
| | | | | | | |
|Conducteur|id|nombre| |nombre|unique, non nul (PK)|1|
|Conducteur|nom|alphabétique|50|chaine de caractères| |Martin|
|Conducteur|prenom|alphabétique|50|chaine de caractères| |Roger|
|Conducteur|telephone|alphanumérique|10|chaine de caractères| |0606060606|
|Conducteur|identifiantPermis|alphabétique|15|chaine de caractères| | |
|Conducteur|trajet|alphabétique|50|chaine de caractères| | |
| | | | | | | |
|Facture|identifiant|alphanumérique| |chaine de caractères|unique, non nul (PK)|FA452536|
|Facture|date|date| |Date|Inférieure ou égale à date actuelle|02/10/2023|
|Facture|montantLocation|nombre|4|nombre|Supérieur ou égal à 0|1000|
|Facture|montantReparations|nombre|6|nombre|Supérieur ou égal à 0|100000|
|Facture|idVehicule|nombre| |nombre|FK|2|
