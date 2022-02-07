import 'package:flutter/material.dart';

class Batiment {
  final String image, titre, description, details;
  final int id;

  Batiment({
    required this.id,
    required this.image,
    required this.titre,
    required this.description,
    required this.details,
  });
}

List<Batiment> batiments = [
  Batiment(
      id: 1,
      image: "assets/images/batiments/PavillonA.JPG",
      titre: "A",
      description:
          "Accueil - Administration - Maintenance\nDirection de la vie étudiante\n(S2C, SAUPS, SSU, SESH)",
      details: "Accueil"),
  Batiment(
      id: 2,
      image: "assets/images/batiments/PavillonB.JPG",
      titre: "B",
      description: "Ecuries\n&\nPavillon d'espaces pédagogique",
      details: "RDC - B0:"),
  Batiment(
      id: 3,
      image: "assets/images/batiments/PavillonC.JPG",
      titre: "C",
      description: "Amphithéâtres",
      details: "RDC - C0:"),
  Batiment(
      id: 4,
      image: "assets/images/batiments/PavillonD.JPG",
      titre: "D",
      description: "Tour Signal\n&\nSalles de réunion",
      details: "vide"),
  Batiment(
      id: 5,
      image: "assets/images/batiments/PavillonE.JPG",
      titre: "E",
      description:
          "Cafétéria universitaire,\nBibliothèque universitaire,\nMaison de la recherche,\nMaison des langues,\nEspaces conférences,\nEcole doctorale,\nSciences Humaines et Sociales",
      details: "RDC - E0:"),
  Batiment(
      id: 6,
      image: "assets/images/batiments/PavillonF.JPG",
      titre: "F",
      description:
          "UFR Sciences Humaines et Sociales,\nPhilosophie,\nUFR Histoire Géographie,\nUFR des Langues et Cultures étrangères\nUFR des Lettres\nESPE",
      details: "Etage F1:"),
  Batiment(
      id: 7,
      image: "assets/images/batiments/PavillonG.JPG",
      titre: "G",
      description: "ESPE\n&\nScolarités",
      details: "Etage G1:"),
  Batiment(
      id: 8,
      image: "assets/images/batiments/PavillonH.JPG",
      titre: "H",
      description: "Bureaux des enseignants",
      details: "Etage H1:"),
  Batiment(
      id: 9,
      image: "assets/images/batiments/PavillonI.JPG",
      titre: "I",
      description: "Logis du Gouverneur",
      details: "vide"),
  Batiment(
      id: 9,
      image: "assets/images/batiments/PavillonJ.JPG",
      titre: "J",
      description: "Gymnase Universitaire Daniel Senet",
      details: "vide"),
];
