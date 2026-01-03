import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NCERTRAGApp());
}

class NCERTRAGApp extends StatelessWidget {
  const NCERTRAGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apna NCERT',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF03256C),
          foregroundColor: const Color(0xFFFFFFFF),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2541B2),
            foregroundColor: const Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
