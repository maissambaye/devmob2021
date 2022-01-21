import 'package:a13_flutterlistpdemo/pageinscription.dart';
import 'package:a13_flutterlistpdemo/pageconnexion.dart';
import 'package:flutter/material.dart';

class PageAccueil extends StatefulWidget {
  @override
  _PageAccueilState createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(color: Colors.green),
            child: Icon(
              Icons.receipt_long,
              size: 60,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PageConnexion();
                      }));
                    },
                    child: Text("Connexion")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PageInscription();
                      }));
                    },
                    child: Text("Inscription")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
