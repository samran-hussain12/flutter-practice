import 'package:flutter/material.dart';
// import 'MainScreen.dart'; // Import MainScreen.dart
import 'Login_page.dart'; // Ensure this file exists in the correct path
import "bottom_navigation.dart";
import 'dart_set.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(), // Added const
    );
  }
}
