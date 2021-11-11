import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(JourAleatoire());
}

class JourAleatoire extends StatefulWidget {
  @override
  _JourAleatoireState createState() => _JourAleatoireState();
}

class _JourAleatoireState extends State<JourAleatoire> {
  Random randomIndex = Random();
  List<String> jours = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nombre aleatoire",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nombre Aleatoires"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cliquez sur le bouton pour voir",
                style: TextStyle(color: Colors.red[800], fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                jours[currentIndex],
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Vous avez appuyé sur le bouton");
                  setState(() {
                    currentIndex = randomIndex.nextInt(jours.length);
                  });
                },
                child: Text("Generer"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
