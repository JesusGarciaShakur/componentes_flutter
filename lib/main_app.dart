import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(239, 31, 219, 210),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(193, 73, 8, 225),
        ),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontSize: 21,
              fontFamily: 'sans-serif',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 56, 4, 116),
            ),
            headlineSmall: TextStyle(
              fontSize: 14.4,
              fontFamily: 'verona',
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 0, 0),
            )),
      ),
    );
  }
}
