import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageHome "),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              })
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Text("Bonjour ${FirebaseAuth.instance.currentUser.uid}"),
        ),
      ),
    );
  }
}
