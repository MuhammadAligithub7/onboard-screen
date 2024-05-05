import 'package:flutter/material.dart';
import 'package:onboarding_screens/Screens/HomeScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'OnboardingScreen1.dart';
import 'OnboardingScreen2.dart';
import 'OnboardingScreen3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  //page controller keep track what page we are right now
  final PageController _controller =  PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage=(index == 2);
              });
          },
            children: const [
              OnboardingScreen1(),
              OnboardingScreen2(),
              OnboardingScreen3(),
            ],
          ),
          Container(
            alignment: const Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                      child: const Text('Skip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                  SmoothPageIndicator(controller: _controller, count: 3),

                  onLastPage? GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const HomeScreen();}));
                        },
                      child: const Text('Done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)) : GestureDetector(
                      onTap: (){
                        _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                      },
                      child: const Text('Next',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                ],
              )
          ),
        ],
      ),
    );
  }
}
