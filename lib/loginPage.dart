import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blue.shade200,
                  Colors.blueAccent.shade700,
                  Colors.blue.shade900
                ]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titleSection,
                inputSection,
                const ButtonConnexion(),
                const SizedBox(height: 50),
              ],
            ),
          )),
    );
  }
}

Widget titleSection = Text(
  'Connexion'.toUpperCase(),
  style: GoogleFonts.comfortaa(
      fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
);

Widget inputSection = Container(
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white30),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: const Icon(
                Icons.email_rounded,
                size: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: TextField(
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white30),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: const Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                style: GoogleFonts.comfortaa(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

class ButtonConnexion extends StatelessWidget {
  const ButtonConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "connexion".toUpperCase(),
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
    );
  }
}
