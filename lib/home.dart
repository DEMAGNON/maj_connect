import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> imageUrls = [
    'https://th.bing.com/th/id/R.b6350e5011a7b61996efada66d100575?rik=7D6Ni11ELDKMoA&pid=ImgRaw&r=0',
    'https://i.pinimg.com/736x/8e/54/c1/8e54c1feaf27dfaf6a076101f0756bf5.jpg',
    'https://www.example.com/image3.jpg',
    'https://www.example.com/image4.jpg',
    'https://www.example.com/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAjConnect'),
      ),
      body: ListView.builder(
        itemCount: imageUrls.length, // Nombre d'éléments dans la liste
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30, // Rayon du CircleAvatar
              backgroundImage: NetworkImage(imageUrls[index]), // Image provenant de l'URL
            ),
            title: Text('Utilisateur ${index + 1}'),
          );
        },
      ),
    );
  }
}
