import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
        )
      ),
      home: const BottomNavbar()
    );
  }
}
