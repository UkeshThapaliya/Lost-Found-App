import 'package:flutter/material.dart';
import 'package:lost_found_app/config/colors.dart';
import 'package:lost_found_app/screens/onboarding_screen.dart';
import 'package:lost_found_app/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lost & Found',
      theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            bodyLarge: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
            bodyMedium: TextStyle(
              fontSize: 16.0,
            ),
          )),
      home: OnboardingScreen(),
    );
  }
}
