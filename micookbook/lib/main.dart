import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'screens/favorites.dart'; // Importa tu FavoritesPage si es necesario

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyAppState(), // Proveedor para todo el árbol
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cookbook Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
