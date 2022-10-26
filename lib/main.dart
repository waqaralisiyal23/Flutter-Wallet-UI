import 'package:flutter/material.dart';
import 'package:walletappui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet App UI',
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      home: const HomeScreen(),
    );
  }
}
