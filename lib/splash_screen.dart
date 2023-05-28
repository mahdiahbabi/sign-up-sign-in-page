import 'package:event_book_app/gen/assets.gen.dart';
import 'package:event_book_app/main.dart';
import 'package:event_book_app/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => OnboardingScreen() )));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Assets.img.splash.image(),
      ),
    ));
  }
}