import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: const Column(
        children: [
          SizedBox(height: 50),
          FlutterLogo(style: FlutterLogoStyle.markOnly,size: 150),
          SizedBox(height: 50),
          Text('Welcome To Onboarding Screen 2'),
        ],
      ),
    );
  }
}