import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: const Column(
        children: [
          SizedBox(height: 50),
          FlutterLogo(style: FlutterLogoStyle.markOnly,size: 150),
          SizedBox(height: 50),
          Text('Welcome To Onboarding Screen 1'),
        ],
      ),
    );
  }
}
