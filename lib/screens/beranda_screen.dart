import 'package:flutter/material.dart';
import '../models/katalog.dart';
import 'detail_screen.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static final List<Katalog> daftarKatalog = [
    Katalog(
      nama: 'Kaos Polos Premium',
      harga: 'Rp 89.000',
      deskripsi:
          'Kaos polos berbahan cotton combed 30s, adem dan nyaman dipakai sehari-hari.',
      icon: Icons.checkroom,
      warnaPastel: const Color(0xFFFFE0E9),
    ),
    Katalog(
      nama: 'Tas Ransel Kampus',
      harga: 'Rp 150.000',
      deskripsi:
          'Tas ransel dengan banyak kompartemen, cocok untuk membawa laptop dan buku kuliah.',
      icon: Icons.backpack,
      warnaPastel: const Color(0xFFE0F7FA),
    ),
    Katalog(
      nama: 'Botol Minum Stainless',
      harga: 'Rp 65.000',
      deskripsi:
          'Botol minum stainless steel 500ml, menjaga suhu minuman tetap dingin atau hangat.',
      icon: Icons.water_drop,
      warnaPastel: const Color(0xFFFFF9C4),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Produk')),
      body: ListView.builder(
        itemCount: daftarKatalog.length,
        itemBuilder: (context, index) {
          final item = daftarKatalog[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: item.warnaPastel,
                child: Icon(item.icon, color: Colors.black87),
              ),
              title: Text(item.nama),
              subtitle: Text(item.harga),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(katalog: item),
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