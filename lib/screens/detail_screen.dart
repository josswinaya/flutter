import 'package:flutter/material.dart';
import '../models/katalog.dart';

class DetailScreen extends StatefulWidget {
  final Katalog katalog;

  const DetailScreen({super.key, required this.katalog});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final katalog = widget.katalog;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Katalog'),
        // Properti leading sengaja dihilangkan agar tombol panah kembali muncul otomatis
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundColor: katalog.warnaPastel,
                child: Icon(katalog.icon, size: 48, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              katalog.nama,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              katalog.harga,
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: katalog.warnaPastel,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                katalog.deskripsi,
                style: const TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: toggleFavorite,
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
                label: Text(isFavorite ? 'Favorit' : 'Tambah ke Favorit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFavorite ? Colors.pink[50] : Colors.indigo,
                  foregroundColor: isFavorite ? Colors.red : Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}