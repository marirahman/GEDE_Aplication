import 'package:flutter/material.dart';
import 'package:GEDE/widgets/flutter_map.dart';
import 'package:url_launcher/url_launcher.dart';

class WisataGunungGede extends StatelessWidget {
  const WisataGunungGede({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Gunung Gede"),
        backgroundColor: Colors.green, // Menambahkan warna background yang lebih menarik
      ),
      body: SingleChildScrollView( // Menambahkan SingleChildScrollView agar konten bisa di-scroll
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/gngede.jpg'), // Gambar latar belakang
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Gunung Gede Pangrango",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Gunung Gede Pangrango adalah salah satu destinasi wisata alam di Cianjur yang menawarkan keindahan dan tantangan bagi para pendaki. Terletak di Taman Nasional Gunung Gede Pangrango, tempat ini sangat cocok untuk pecinta alam.",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Harga Tiket: Rp 25.000 (Hari Biasa), Rp 35.000 (Akhir Pekan)",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Jam Buka: 06:00 - 17:00 WIB",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Jam Tutup: 17:00 WIB",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol Lihat Peta
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlutterMapWidget(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.map), // Ikon peta
                    label: const Text("Lihat Peta"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Warna tombol
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol Kunjungi Website Resmi
                  ElevatedButton.icon(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://booking.gedepangrango.org/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const Icon(Icons.web), // Ikon website
                    label: const Text("Kunjungi Website Resmi"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna tombol
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}