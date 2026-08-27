import 'package:flutter/material.dart';
// 1. Import file model kamu (sesuaikan path lokasi filenya)
import './usermodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. Simulasi data JSON dari server
    Map jsonResponse = {
      'name': 'Budi Santoso',
      'age': 22,
    };

    // 3. Konversi JSON ke Objek UserModel
    UserModel user = UserModel.fromJson(jsonResponse);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pertemuan 2 - Data User'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: ${user.name}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('ID: ${user.id.isEmpty ? "(string kosong)" : user.id}'),
                  Text('Umur: ${user.age} tahun'),
                  Text('Email: ${user.email ?? "(opsional/null)"}'),
                  Text('Status Aktif: ${user.isActive}'),
                  const Divider(height: 30),
                  Text('Hasil toJson():\n${user.toJson()}', style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}