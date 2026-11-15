import 'package:flutter/material.dart';
import 'detailpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List btsMembers = const [
    {
      'stageName': 'RM (Kim Namjoon)',
      'posisi': 'Leader, Main Rapper',
      'lahir': '12 September 1994',
      'asal': 'Ilsan, Gyeonggi-do, Korea Selatan',
      'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYovFwTjZp_UdlQtqof9PrzuOeBxCn4AcvhDN0Akz-cRRF1JnOlIsbFmQj&s=10',
      'deskripsi':
          'Kim Namjoon atau RM adalah leader sekaligus main rapper BTS. Ia dikenal dengan IQ tinggi (148), kemampuan bahasa Inggris yang fasih, serta kontribusi besarnya dalam menulis dan memproduksi sebagian besar lagu BTS.'
    },
    {
      'stageName': 'Jin (Kim Seokjin)',
      'posisi': 'Sub Vocalist, Visual',
      'lahir': '4 Desember 1992',
      'asal': 'Gwacheon, Gyeonggi-do, Korea Selatan',
      'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAcTcYceOkBz3Jsa6WSEhUZa-WMvRRR1hwrluqYcarQmKWITzmdBlDlwI&s=10',
      'deskripsi':
          'Kim Seokjin adalah member tertua di BTS yang dijuluki "Worldwide Handsome". Ia memiliki suara falsetto yang stabil dan emosional, serta dikenal dengan kepribadiannya yang humoris.'
    },
    {
      'stageName': 'SUGA (Min Yoongi)',
      'posisi': 'Lead Rapper',
      'lahir': '9 Maret 1993',
      'asal': 'Daegu, Korea Selatan',
      'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpY4eQK121yZXFJVrmsnpUr0rTLyEMczAjjU8qSqhDD9F5RQpHYjS6EKk&s=10',
      'deskripsi':
          'Min Yoongi dikenal dengan nama panggung SUGA dan nama solo Agust D. Selain menjadi lead rapper dengan lirik yang tajam dan jujur, ia juga produser musik berbakat yang menciptakan banyak lagu hits.'
    },
    {
      'stageName': 'j-hope (Jung Hoseok)',
      'posisi': 'Main Dancer, Sub Rapper',
      'lahir': '18 Februari 1994',
      'asal': 'Gwangju, Korea Selatan',
      'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRceKHTnbeyY78UOG7j9X8ald1u7P2HJl-txqQK1ZQYChSemK31lx72biCG&s=10',
      'deskripsi':
          'Jung Hoseok atau j-hope adalah pemimpin koreografi dan main dancer BTS. Ia dikenal sebagai pembawa energi positif di grup dan memiliki gaya rap serta produksi musik yang penuh warna.'
    },
    {
      'stageName': 'Jimin (Park Jimin)',
      'posisi': 'Main Dancer, Lead Vocalist',
      'lahir': '13 Oktober 1995',
      'asal': 'Busan, Korea Selatan',
      'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJ8i9aagfbvz6p7h40x9Y-iqLy2tdM9ICSwXZnVJ9J8D4kQrbM8rfXM4&s=10',
      'deskripsi':
          'Park Jimin memiliki latar belakang tari kontemporer yang membuat gerakan panggungnya sangat ekspresif. Ia juga memiliki warna vokal tinggi yang khas dan memikat.'
    },
    {
      'stageName': 'V (Kim Taehyung)',
      'posisi': 'Sub Vocalist, Visual',
      'lahir': '30 Desember 1995',
      'asal': 'Daegu, Korea Selatan',
      'gambar': 'https://static.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p1/294/2026/01/31/V-BTS-2557301825.jpg',
      'deskripsi':
          'Kim Taehyung dikenal dengan suara baritonnya yang dalam dan menenangkan. Selain bermusik dan menyukai genre jazz, ia juga aktif di dunia fotografi dan akting.'
    },
    {
      'stageName': 'Jungkook (Jeon Jungkook)',
      'posisi': 'Main Vocalist, Center, Maknae',
      'lahir': '1 September 1997',
      'asal': 'Busan, Korea Selatan',
      'gambar': 'https://vstatic.vietnam.vn/vietnam/resource/IMAGE/2026/07/20/1784536610531_1784536327412-jpg.webp',
      'deskripsi':
          'Jeon Jungkook adalah member termuda (maknae) yang dijuluki "Golden Maknae" karena kemampuannya yang serba bisa, mulai dari vokal utama, menari, rap, hingga olahraga.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),
      appBar: AppBar(
        title: const Text(
          'BTS Members',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: btsMembers.length,
        itemBuilder: (context, index) {
          final member = btsMembers[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  member['gambar']!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 60,
                    height: 60,
                    color: Colors.deepPurple.shade100,
                    child: const Icon(Icons.person, color: Colors.deepPurple),
                  ),
                ),
              ),
              title: Text(
                member['stageName']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  member['posisi']!,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.deepPurple,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      stageName: member['stageName']!,
                      posisi: member['posisi']!,
                      lahir: member['lahir']!,
                      asal: member['asal']!,
                      gambar: member['gambar']!,
                      deskripsi: member['deskripsi']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}