import 'package:flutter/material.dart';

class PageConnexion extends StatelessWidget {
  const PageConnexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titre = Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: const Text(
        "Macompta Events",
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Color(0xff110c26),
          height: 38 / 32,
        ),
        textAlign: TextAlign.left,
      ),
    );

    Widget sousTitre = Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
        child: const Text(
        "Connexion",
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color(0xff110c26),
          height: 55 / 18,
        ),
        textAlign: TextAlign.left,
    ));

    Widget emailTextField = Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Entrer votre email',
            ),
          ),
    );

    Widget mdpTextField = Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Entrer votre mot de passe',
            ),
          ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff2A9D8F),
            toolbarHeight: 20,
          ), // AppBar
          body: ListView(
            children: [titre, sousTitre, emailTextField, mdpTextField],
          ) // Container
          ), // Scaffold
    );
  }
}
