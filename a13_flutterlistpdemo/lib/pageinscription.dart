import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PageInscription extends StatefulWidget {
  @override
  _PageInscriptionState createState() => _PageInscriptionState();
}

class _PageInscriptionState extends State<PageInscription> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              icon: Icon(Icons.email),
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
                hintText: "Mot de passe",
                icon: Icon(
                  Icons.lock,
                  color: Colors.red,
                )),
            obscureText: true,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  UserCredential userCred = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);

                  print("Creation reussie");
                  Navigator.pop(context);
                } catch (e) {
                  print(e);
                }
              },
              child: Text("Inscription "))
        ],
      ),
    );
  }
}
