import 'cart.dart';
import 'notification.dart';
import 'home_screen.dart';
import 'profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  List myList = [
    HomeScreen(),
    CartScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          currentIndex: myIndex,
          backgroundColor: Colors.green,
          // fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 57, 12, 183),
          unselectedItemColor: const Color.fromARGB(255, 215, 4, 4),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Cart"),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.notification_important,
              ),
              label: "Notification",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
        ),
        body: SafeArea(child: myList[myIndex]));
  }
}
