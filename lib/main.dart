import 'package:flutter/material.dart';
import 'login_page.dart'; // Make sure this import is here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginPage(),

    );
  }
}