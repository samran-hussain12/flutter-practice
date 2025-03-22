import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("apple"),centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 86, 169, 31),
      ),
      
    
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 16,right: 16),
        child: Column(
          children: [
            
            TextField(
        
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
        
                ),
        
        
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){}, child: Text("Login"))
          
          ],
          
          ),
        
      ),
    );
  }
}