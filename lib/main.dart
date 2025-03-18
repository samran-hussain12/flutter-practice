import 'package:flutter/material.dart';
import 'package:project/app.dart';
import 'package:project/button.dart';
import 'package:project/declerationsreen.dart';
//import 'appbaar.dart';
import 'app.dart';
import "scrolling.dart";


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
      home: ScrollingDemoScreen(),
    );
  }
}
