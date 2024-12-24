import 'dart:async';
import 'package:flutter/material.dart';
import 'landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer untuk berpindah ke halaman berikutnya
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPageOne()), // Pindah ke HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 245, 243), // Warna latar belakang
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'lib/assets/logoml.jpg', // Path ke file logo
              width: 150, // Atur lebar logo
              height: 150, // Atur tinggi logo
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 5), // Jarak antara logo dan teks
            // Nama Aplikasi
            const Text(
              "GEDE",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 8, 8, 8), // Warna teks
                letterSpacing: 3.0, // Spasi antar huruf
              ),
            ),
          ],
        ),
      ),
    );
  }
}
