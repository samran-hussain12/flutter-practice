import 'package:flutter/material.dart';
import 'package:project/Login_page.dart';
//import 'appbaar.dart';


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
      //home: const MyHo  mePage(title: 'Flutter Demo Home Page'),
      home: LoginPage(),
    );
  }
}
