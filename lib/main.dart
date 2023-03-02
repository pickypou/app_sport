import 'package:app_sport/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'loginPage.dart';


void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Mon coach sportif',
    home: HomePage(),
  ),
  );
}
class HomePage extends StatelessWidget{
  const HomePage({super.key});

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
          ]
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleSection,
            imageSection,
            textSection,
            const ButtonInscription(),
            const SizedBox(height: 20,),
            const ButtonConnexion(),
          ],
        ),
      ),
    ),
  );
  }
}
Widget titleSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 25),
  child:  Text('Mon coach sportif', style: GoogleFonts.exo(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  ),),
);

Widget imageSection = Container(
  height: 220,
  width: 220,
  padding: const EdgeInsets.all(30),
 decoration: BoxDecoration(
   color: const Color.fromRGBO(255, 255, 255, 0.1),
   borderRadius: BorderRadius.circular(50),
 ),
  child: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 15,
          offset: const Offset(0, 3)
        ),
      ],
    ),
    child: Image.network(
      'https://cdn.shopify.com/s/files/1/0584/9586/0895/products/planche2_600x.png?v=1637442089'
    ),
  ),

);
Widget textSection = Container(
  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
  child: Text('''
  la planche à pompes vous permer
   de faire diférent exercices pour
    travailler le haut du corps
    
    -Epaule
    
    -Triceps
    
    -Dos
    
    -potrine
  ''',
    softWrap: true,
    style: GoogleFonts.comfortaa(
    fontSize: 16,
    color: Colors.white
  ),),
);

class ButtonInscription extends StatelessWidget{
  const ButtonInscription({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(110, 15, 110, 15),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: Text(
        "Inscription".toUpperCase(),
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
        ),
      ),
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context) => const SignupPage()),
        );
      },
    );
  }
  
}

class ButtonConnexion extends StatelessWidget{
  const ButtonConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(110, 15, 110, 15),
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
      onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder:(context) => const LoginPage()),
        );
      },
    );
  }

}

