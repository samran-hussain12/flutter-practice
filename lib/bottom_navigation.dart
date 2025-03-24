import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  static const String imageUrl =
      'https://source.unsplash.com/300x200/?technology,nature'; // Network image URL

  static List<Widget> _widgetOptions = <Widget>[
    buildPage('Home Page', Colors.blue),
    buildPage('Search Page', Colors.green),
    buildPage('Notifications', Colors.red),
    buildPage('Profile Page', Colors.purple),
    buildPage('Settings Page', Colors.orange),
  ];

  static Widget buildPage(String text, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15), // Rounded corners
          child: FadeInImage.assetNetwork(
            placeholder:
                'assets/loading.gif', // Ensure you add a loading GIF or use a built-in progress indicator
            image: imageUrl,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
            imageErrorBuilder: (context, error, stackTrace) => Icon(
                Icons.broken_image,
                size: 100,
                color: Colors.red), // Error handling
          ),
        ),
        const SizedBox(height: 20),
        Text(
          text,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: _selectedIndex == 1 ? Colors.green : Colors.grey),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: _selectedIndex == 2 ? Colors.red : Colors.grey),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _selectedIndex == 3 ? Colors.purple : Colors.grey),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: _selectedIndex == 4 ? Colors.orange : Colors.grey),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(221, 118, 173, 25),
      ),
    );
  }
}
