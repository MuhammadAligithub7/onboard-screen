import 'package:flutter/material.dart';
import 'Screens/Onboarding Screens/OnboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screens',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
