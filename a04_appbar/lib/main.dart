import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar application",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "AppBar App",
            style: TextStyle(
                color: Colors.cyan[200],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          /* leading: Icon(
            Icons.add_ic_call_rounded,
            size: 25,
          ),*/
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.settings),
            Icon(Icons.account_box_outlined)
          ],
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "Propriétés",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(color: Colors.blue[300]),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Colors.orange,
                ),
                title: Text("Fatou Ndiaye"),
                subtitle: Text("Etudiante L3 Informatique"),
                trailing: Icon(Icons.navigate_next),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 50,
                  color: Colors.green,
                ),
                title: Text("Configurations"),
                subtitle: Text("Photos profil, mots de passe, ..."),
                trailing: Icon(Icons.fact_check),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Recherche"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: "Compte Bancaire")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_outline_sharp),
        ),
      ),
    );
  }

  DrawerHeader buildDrawerHeader() {
    return DrawerHeader(
      child: Text(
        "Propriétés",
        style: TextStyle(
            color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(color: Colors.blue[300]),
    );
  }
}
