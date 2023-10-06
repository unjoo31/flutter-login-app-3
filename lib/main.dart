import 'package:flutter/material.dart';
import 'package:login_app_3/pages/home_page.dart';
import 'package:login_app_3/pages/join_page.dart';
import 'package:login_app_3/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      initialRoute: "/join",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/join": (context) => JoinPage(),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: Size(double.infinity, 60),
        ),
      ),
    );
  }
}
