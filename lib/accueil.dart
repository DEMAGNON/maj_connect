import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Maj_Connect",
          style: TextStyle(color:Colors.white, fontSize: 20),),
      ),
    );
  }
}
