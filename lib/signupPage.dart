// ignore: file_names
import 'package:app_sport/loginPage.dart';
import 'package:app_sport/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                const SizedBox(height: 50),
                const ButtonValidation(),
                textSection,
              ],
            ),
          )),
    );
  }
}

Widget titleSection = Text(
  "Inscription".toUpperCase(),
  style: GoogleFonts.comfortaa(
      fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
);

Widget inputSection = Container(
  margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Prénom",
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Nom",
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.email_outlined,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Mot de passe",
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Confirmer le Mot de passe",
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  ),
);

class ButtonValidation extends StatelessWidget {
  const ButtonValidation({super.key});

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
        "Envoyer".toUpperCase(),
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

Widget textSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Déjà un compte ?",
        style: GoogleFonts.comfortaa(color: Colors.white),
      ),
      const BackButton()
    ],
  ),
);

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      child: Text(
        "Connexion",
        style: GoogleFonts.comfortaa(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
