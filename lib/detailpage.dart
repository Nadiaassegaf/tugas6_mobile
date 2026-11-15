import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String stageName;
  final String posisi;
  final String lahir;
  final String asal;
  final String gambar;
  final String deskripsi;

  const DetailPage({
    super.key,
    required this.stageName,
    required this.posisi,
    required this.lahir,
    required this.asal,
    required this.gambar,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          stageName,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Header
            Image.network(
              gambar,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: double.infinity,
                height: 260,
                color: Colors.deepPurple.shade100,
                child: const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.deepPurple,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Member
                  Text(
                    stageName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Badge Posisi
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      posisi,
                      style: const TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Informasi Tanggal Lahir & Asal (mirip detail lokasi di wisata)
                  Row(
                    children: [
                      const Icon(Icons.cake, color: Colors.deepPurple, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Lahir: $lahir',
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.deepPurple, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Asal: $asal',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 32, thickness: 1),

                  // Deskripsi Profil
                  const Text(
                    'Tentang Member',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    deskripsi,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.grey.shade800,
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