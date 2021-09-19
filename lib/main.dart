import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/constants.dart';
import 'screens/home_screen.dart';
import 'screens/loading_screen.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        colorScheme: const ColorScheme(
          primary: Colors.green,
          primaryVariant: Colors.green,
          secondary: Colors.red,
          secondaryVariant: Colors.red,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.green,
          onSecondary: Colors.red,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      home: FutureBuilder<bool>(
          future: Future.delayed(const Duration(seconds: 2), () => true),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return OnboardingScreen();
            }
            return const LoadingScreen();
          }),
    );
  }
}
