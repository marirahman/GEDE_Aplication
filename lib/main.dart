import 'package:GEDE/screens/landingpage.dart';
import 'package:flutter/material.dart';
import 'screens/landingpage.dart'; // Pastikan path-nya sesuai dengan lokasi file LandingPageOne
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GEDE',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(), // Tampilkan splash screen sebagai layar awal
    );
  }
}