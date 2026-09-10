import 'package:flutter/material.dart';

class Katalog {
  final String nama;
  final String harga;
  final String deskripsi;
  final IconData icon;
  final Color warnaPastel;

  const Katalog({
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.icon,
    required this.warnaPastel,
  });
}