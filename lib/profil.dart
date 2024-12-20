import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  // Liste d'exemple de personnes
  final List<Map<String, String>> people = [
    {
      'name': 'Dayo Kingston',
      'email': 'dayo@gmail.com',
      'profilePic': 'assets/images/messi.png', // Remplacez ceci par votre propre chemin d'image
    },
    {
      'name': 'DEMAGON MONIQUE',
      'email': 'monique@gmail.com',
      'profilePic': 'assets/images/joker.png', // Remplacez ceci par votre propre chemin d'image
    },
    {
      'name': 'KPODEKON Fréjuste',
      'email': 'frejuste@gmail.com',
      'profilePic': 'assets/images/messi.png', // Remplacez ceci par votre propre chemin d'image
    },
     {
      'name': ' BOKPE Junnior',
      'email': 'junnior@gmail.com',
      'profilePic': 'assets/images/joker.png', // Remplacez ceci par votre propre chemin d'image
    },
     {
      'name': 'AKODE Jouvence',
      'email': 'jouvence@gmail.com',
      'profilePic': 'assets/images/messi.png', // Remplacez ceci par votre propre chemin d'image
    },
    // Ajoutez autant de personnes que vous souhaitez
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "ACCUEIL",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      // Menu hamburger
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              accountName: Text('Dayo Kingston', style: TextStyle(color: Colors.white, fontSize: 18)),
              accountEmail: Text('dayo@example.com', style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.indigo),
              ),
            ),
            // Menu items
            ListTile(
              leading: Icon(Icons.person, color: Colors.indigo),
              title: Text('Profile'),
              onTap: () {
                // Navigate to Profile page
              },
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.indigo),
              title: Text('Messages'),
              onTap: () {
                // Navigate to Messages page
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.indigo),
              title: Text('Notifications'),
              onTap: () {
                // Navigate to Notifications page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.indigo),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings page
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(people[index]['profilePic']!),
                  // Remplacez le chemin par votre propre image
                ),
                title: Text(
                  people[index]['name']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(people[index]['email']!),
                trailing: Icon(Icons.arrow_forward, color: Colors.indigo),
                onTap: () {
                  // Action lors du clic sur une personne (afficher plus d'infos ou naviguer)
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
