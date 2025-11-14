import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define a nice green color
  final Color primaryGreen = Colors.green.shade600;

  @override
  Widget build(BuildContext context) {
    // Scaffold now just has a plain background color
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // --- YOUR LOGO ---
                const SizedBox(height: 80),
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 50),

                // --- Email Text Field ---
                TextField(
                  // Text color is now black
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.grey[600]),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey[700]),
                    // Use a light grey fill
                    filled: true,
                    fillColor: Colors.grey[100],
                    // Standard border
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    // Green border when focused
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primaryGreen, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                // --- Spacer ---
                const SizedBox(height: 20),

                // --- Password Text Field ---
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.grey[600]),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey[700]),
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primaryGreen, width: 2),
                    ),
                  ),
                ),

                // --- Forgot Password ---
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      // Text is now green
                      style: TextStyle(color: primaryGreen),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // --- Login Button ---
                ElevatedButton(
                  onPressed: () {
                    // Login logic
                  },
                  style: ElevatedButton.styleFrom(
                    // Button background is green
                    backgroundColor: primaryGreen,
                    // Button text color is white
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}