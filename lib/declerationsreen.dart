import 'package:flutter/material.dart';

class DeclerationsScreen extends StatelessWidget {
  const DeclerationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Declerations'),
      ),
      backgroundColor: const Color.fromARGB(255, 140, 151, 143),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProfileImage(),
            const SizedBox(height: 100),
            _buildTextContainer(
                'John Doe', 24, FontWeight.bold, Colors.black12),
            const SizedBox(height: 10),
            _buildTextContainer(
                'Flutter Developer', 18, FontWeight.normal, Colors.greenAccent),
            const SizedBox(height: 20),
            _buildLogoIcon(),
          
          ],  
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/profile.jpg'),
      ),
    );
  }

  Widget _buildTextContainer(
      String text, double fontSize, FontWeight fontWeight, Color bgColor) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }

  Widget _buildLogoIcon() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(Icons.circle, size: 50, color: Colors.blue),
            Image(
              image: AssetImage('assets/samran.png'),
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
