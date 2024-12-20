import 'package:flutter/material.dart';
import 'package:maj_connect/profil.dart';
 // Assuming you have an InscriptionPage

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  String _phoneNumber = ''; // Variable pour stocker le numéro de téléphone

  // Fonction pour soumettre le numéro de téléphone
  void _submitPhoneNumber() {
    if (_phoneNumber.isEmpty) {
      // Affiche une alerte si le numéro est vide
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Veuillez entrer un numéro de téléphone.")),
      );
    } else {
      print("Numéro de téléphone soumis : $_phoneNumber");
      // Naviguer vers la page d'accueil après la soumission
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccueilPage()), // Navigation vers AccueilPage
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.deepPurple, // Couleur de l'AppBar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          title: const Text(
            "Connexion",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          elevation: 10, // Ajout d'une ombre
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Se connecter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 60),
            // Champ de saisie du numéro de téléphone sans contrôleur
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, // Couleur de fond du champ
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
                labelText: 'Numéro de téléphone',
                prefixIcon: const Icon(Icons.phone),
                labelStyle: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Bouton Se connecter avec onPressed
            ElevatedButton(
              onPressed: _submitPhoneNumber, // Appel de la fonction de navigation
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Couleur du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
              ),
              child: const Text(
                "Se connecter",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Bouton pour rediriger vers la page d'inscription
            TextButton(
              onPressed: () {
               /*  Navigator.push(
                  context,
                  MaterialPageRoute(
                    // builder: (context) => const (), // Redirection vers la page d'inscription
                  ),
                ); */
              },
              child: const Text(
                "Pas encore inscrit ? S'inscrire",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
