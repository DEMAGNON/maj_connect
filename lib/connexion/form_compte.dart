import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormCompte extends StatefulWidget {
  const FormCompte({super.key});

  @override
  State<FormCompte> createState() => _FormCompteState();
}

class _FormCompteState extends State<FormCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Créer un compte"),),
    );
  }
}
