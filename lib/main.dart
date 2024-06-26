import 'package:flutter/material.dart';
import 'package:plants_application_c2w/screens/get_started.dart';
import 'package:plants_application_c2w/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Plants',
    );
  }
}
