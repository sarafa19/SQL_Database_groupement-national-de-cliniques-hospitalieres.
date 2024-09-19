Les bases de données sont des outils fondamentaux pour stocker, organiser et 
récupérer des informations de manière efficace, ce qui revêt une importance 
particulière dans le contexte des cliniques hospitalières.

Ce rapport se concentre sur un mini-projet de base de données qui a pour objectif de réviser 
la structure d'une base de données utilisée par un groupement national de 
cliniques hospitalières. Ce groupement gère un large éventail d'informations, y 
compris des données sur les établissements, les patients et le personnel 
médical

• Une Clinique peut avoir plusieurs services mais un aménagement 
appartient à une seule Clinique.
• Un service (aménagement) donné peut hospitaliser plusieurs patients.
• Un membre du Personnel peut être responsable de plusieurs services ou 
aucun.
• Un Patient peut avoir plusieurs dossiers médicaux
• Un dossier médical appartient à un Patient précis.
• Un service dispose d’une seule et unique localisation

III- MODELE LOGIQUE DE DONNEES MLD
CLINIQUE = (ID_clinique INT, Nom_clinique VARCHAR(50), Adresse_clinique 
VARCHAR(50));
LOCALISATION = (Num_batîment VARCHAR(50));
PERSONNEL = (ID_personnel INT, Nom_personnel VARCHAR(50), Prenom 
VARCHAR(50));
DOSSIER_MEDICAL = (ID_test INT, Résultat VARCHAR(50), Date_test DATE);
PATIENTS = (NSS VARCHAR(15), Nom_Patient VARCHAR(50), Prenom_patient 
VARCHAR(50), Adresse_patient VARCHAR(50), Nom_mutuelle VARCHAR(50));
SERVICE = (ID_service INT, Nom_service VARCHAR(50), num_étage INT, 
#ID_personnel, #Num_batîment, #ID_clinique);
HOSPITALISER = (#NSS, date_admission DATE, date_sortie DATE, num_chambre INT, 
#ID_service);
Avoir = (#ID_test, #NSS);

Ce mini-projet de conception de base de données a été entrepris dans le but de 
revoir la structure de la base de données utilisée par un groupement national 
de cliniques hospitalières, afin de mieux répondre aux besoins en constante 
évolution de l'organisation. En passant en revue les différentes entités, relations 
et attributs nécessaires pour gérer les établissements, les patients et le 
personnel, nous avons élaboré une conception de base de données qui peut 
contribuer à améliorer l'efficacité opérationnelle et la qualité des soins fournis.
TEMPS MIS : 10 heures dont 6 heures de TP en classe et 4h à la maison
DIFFICULTES RENCONTREES :
Formulation des requêtes SQL de sorte à pouvoir être exécutées par le logiciel
