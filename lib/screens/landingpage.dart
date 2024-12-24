import 'package:GEDE/const.dart';
import 'package:GEDE/model/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:GEDE/const.dart'; // Pastikan ini adalah file yang sesuai dengan kebutuhan
import 'login_page.dart'; // Import halaman login
import 'register_page.dart'; // Import halaman register
import 'package:GEDE/model/landing_page.dart'; // Import model landing page jika diperlukan

class LandingPageOne extends StatefulWidget {
  const LandingPageOne({super.key});

  @override
  State<LandingPageOne> createState() => _LandingPageOneState();
}

class _LandingPageOneState extends State<LandingPageOne> {
  int currentIndex = 0;

  Widget dotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(right: 6),
      width: 20,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index == currentIndex ? Colors.white : Colors.white54,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: landingpage.length,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Image.network(
                landingpage[index].image,
                fit: BoxFit.cover,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Column(
                  children: [
                    Image.asset(
                      'lib/assets/logoml.jpg', // Ganti dengan path logo Anda
                      width: 150, // Atur lebar logo
                      height: 150, // Atur tinggi logo
                      fit: BoxFit.contain, // Agar logo tetap proporsional
                    ),
                    Text(
                      landingpage[currentIndex].name,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 41, 39, 39),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NunitoSans",
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Mengajak Pengunjung untuk memulai Petualngan Alam Sekaligus Menikmati Sajian Khas Daerah",
                      style: TextStyle(
                        fontSize: 11,
                        color: Color.fromARGB(157, 12, 12, 12),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NunitoSans",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        landingpage.length,
                        (index) => dotIndicator(index),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 185,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(35),
                      color: Colors.white,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 5),
                                    spreadRadius: 15,
                                    blurRadius: 15,
                                  ),
                                ],
                                color: kButtonColor,
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mari Kita Mulai",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Sudah punya akun? ",
                                    style: TextStyle(
                                      color: kButtonColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Masuk",
                                    style: TextStyle(
                                      color: blueTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
