import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: JoursAleatoires(),
    );
  }
}

class JoursAleatoires extends StatefulWidget {
  //const JoursAleatoires({ Key? key }) : super(key: key);

  @override
  _JoursAleatoiresState createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  List<String> jourSemaine = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];

  int currentIndex = 0;

  Random rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jours Aléatoires"),
        centerTitle: true,
        leading: Icon(Icons.settings),
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Appuyez sur le bouton pour generer !!!",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 200,
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Jour  : ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    jourSemaine[currentIndex],
                    style: TextStyle(
                      color: Colors.orange[200],
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = rnd.nextInt(7);
                });

                print("La valeur de index $currentIndex");
              },
              child: Text(
                "Generer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 10, padding: EdgeInsets.all(10)),
            )
          ],
        ),
      ),
    );
  }
}
