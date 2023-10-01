import 'package:flutter/material.dart';
import 'package:pbl_studio_gallery/page/intro_page.dart';
import 'page/home_page.dart';
import 'page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
