// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("MEme"),
            const Text("Target"),

            // Image with proper loading and error handling
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://source.unsplash.com/400x300/?cricket-stadium',
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.error, size: 50, color: Colors.red),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
