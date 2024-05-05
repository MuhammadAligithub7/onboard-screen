import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: const Column(
        children: [
          SizedBox(height: 50),
          FlutterLogo(style: FlutterLogoStyle.markOnly,size: 150),
          SizedBox(height: 50),
          Text('Welcome To Onboarding Screen 3'),
        ],
      ),
    );
  }
}