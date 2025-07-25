import 'package:fluentai/pages/authpage/login.dart';
import 'package:fluentai/pages/authpage/register.dart';
import 'package:fluentai/pages/onboarding/PersonalizedPlanScreen.dart';
import 'package:fluentai/pages/onboarding/onboardingscreen.dart';
import 'package:fluentai/pages/onboarding/onboarding.dart';
import 'package:fluentai/pages/screen/home.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme:   ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Homepage()
    );
  }
}

