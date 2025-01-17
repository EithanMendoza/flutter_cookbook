import 'package:flutter/material.dart';
import 'screens/design.dart';
import 'screens/list.dart';
import 'screens/image.dart';
import 'screens/navigation.dart';
import 'screens/favorites.dart'; // Importa el archivo de Favorites

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.design_services, color: Colors.blue),
                title: const Text('Go to Design Section'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DesignScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.list, color: Colors.green),
                title: const Text('Go to List Section'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.image, color: Colors.purple),
                title: const Text('Go to Images Section'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImagesScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.navigation, color: Colors.red),
                title: const Text('Go to Navigation Section'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite, color: Colors.pink),
                title: const Text('Go to Favorites Section'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritesPage()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter Cookbook!'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('About'),
                  content: const Text(
                      'This is a demo app for showcasing Flutter features.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/flutter_logo.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Flutter Cookbook!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () => _showMenu(context),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.menu),
                  SizedBox(width: 8),
                  Text(
                    'Explore Sections',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
