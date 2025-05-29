import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ExternITInfoApp());
}

class ExternITInfoApp extends StatelessWidget {
  const ExternITInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExternIT Info',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00897B), // Teal color
          primary: const Color(0xFF00897B),
          secondary: const Color(0xFF26A69A),
          background: Colors.white,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
