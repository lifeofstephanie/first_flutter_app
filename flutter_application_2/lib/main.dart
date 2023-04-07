import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth/onboarding/screen1.dart';
import 'package:flutter_application_2/auth/onboarding/screen2.dart';
import 'package:flutter_application_2/auth/onboarding/screen3.dart';
import 'package:flutter_application_2/auth/splash_screen.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
