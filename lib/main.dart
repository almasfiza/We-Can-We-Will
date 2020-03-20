import 'package:ngo/event.dart';
import 'package:ngo/appbar.dart';
import 'leaderboard.dart';
import 'package:flutter/material.dart';
import 'package:ngo/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}