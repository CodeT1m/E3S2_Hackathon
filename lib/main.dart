import 'package:e3s2_hackathon/screens/base_screen.dart';
// import 'package:e3s2_hackathon/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E3S2 Hackathon- Thrive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const BaseScreen(),
    );
  }
}