import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapWidget extends StatelessWidget {
  const FlutterMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peta Wisata"),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-6.8145, 107.1424), // Koordinat default, misalnya Gunung Gede
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-6.8145, 107.1424), // Gunung Gede
                builder: (ctx) => const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 30.0,
                ),
              ),
              Marker(
                point: LatLng(-6.8213, 107.1267), // Lokasi Wisata Lain
                builder: (ctx) => const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
