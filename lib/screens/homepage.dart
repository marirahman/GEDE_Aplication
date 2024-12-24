import 'package:GEDE/const.dart';
import 'package:GEDE/model/destination_model.dart';
import 'package:GEDE/screens/detail_destination.dart';
import 'package:GEDE/screens/profile_page.dart'; // Halaman Profil
import 'package:GEDE/screens/wisata_page.dart'; // Halaman Wisata
import 'package:GEDE/screens/kuliner_laksa_cianjur.dart'; // Halaman Kuliner Laksa Cianjur
import 'package:GEDE/widgets/popular_destination.dart';
import 'package:GEDE/widgets/rekomendasi_destination.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  // Daftar Ikon
  List<IconData> icons = [
    Icons.home_filled, // Home
    Icons.place_outlined, // Wisata
    Icons.restaurant_menu_outlined, // Kuliner
    Icons.person_outline_outlined, // Profil
  ];

  // Data Destinasi
  List<TravelDestination> popular = listDestination
      .where((element) => element.category == 'popular')
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: selectedPage == 0
          ? _buildHomeContent() // Konten untuk halaman utama
          : _buildSelectedPage(), // Navigasi ke halaman lainnya
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Konten Halaman Utama
  Widget _buildHomeContent() {
    return Column(
      children: [
        buildAppBar(), // Ubah BuildAppBar menjadi buildAppBar
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Destinasi jalur pendakian',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                  fontSize: 12,
                  color: blueTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _buildHorizontalScroll(popular),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rekomendasi Jalur Untuk Kamu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                  fontSize: 12,
                  color: blueTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Expanded(child: _buildVerticalScroll(rekomendasi)),
      ],
    );
  }

  // Navigasi Halaman
  Widget _buildSelectedPage() {
    if (selectedPage == 1) return const WisataGunungGede();
    if (selectedPage == 2) return const KulinerLaksaCianjur(); // Mengarahkan ke halaman kuliner
    if (selectedPage == 3) return const ProfilePage();
    return Container();
  }

  // Scroll Horizontal untuk Destinasi Populer
  Widget _buildHorizontalScroll(List<TravelDestination> list) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailDestinasi(destination: list[index]),
                  ),
                );
              },
              child: PopularDestination(destination: list[index]),
            ),
          ),
        ),
      ),
    );
  }

  // Scroll Vertikal untuk Rekomendasi
  Widget _buildVerticalScroll(List<TravelDestination> list) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailDestinasi(destination: list[index]),
                  ),
                );
              },
              child: RekomendasiDestination(destination: list[index]),
            ),
          ),
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                icons.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  child: Icon(
                    icons[index],
                    size: 32,
                    color: selectedPage == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  // AppBar (Perbaiki nama fungsi di sini)
  Widget buildAppBar() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 5))
        ],
      ),
      child: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: buildSearchButton(),
        ),
      )));
    
  }

  // Tombol Pencarian
  Widget buildSearchButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'cari destinasi...',
          hintStyle: TextStyle(
            color: Colors.white54,
            fontSize: 18,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.white54, size: 28),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}