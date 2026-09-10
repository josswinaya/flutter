============================================================================================================================================
Deskripsi

Aplikasi Flutter yang mendemonstrasikan fitur navigasi antar screen menggunakan Stack Navigation (Navigator.push). Terdiri dari dua screen:

Screen 1 - Beranda (Katalog): menampilkan daftar 3 produk dalam bentuk card yang bisa diklik, dibangun sebagai StatelessWidget menggunakan ListView.builder dan ListTile.
Screen 2 - Detail Katalog: menampilkan detail produk yang dipilih, dibangun sebagai StatefulWidget dengan tata letak Column. Memiliki tombol "Tambah ke Favorit" yang mengubah state (ikon, warna, label) secara interaktif menggunakan setState.
Fitur
Navigasi antar screen dengan Navigator.push (Stack Navigation)
Tombol back otomatis dari AppBar, ditambah IconButton back manual di Screen Detail yang memanggil Navigator.pop
Perubahan state interaktif pada tombol favorit (StatefulWidget)
Layout dengan Column, ListView, ListTile, Container (background pastel + padding untuk deskripsi produk), Icon, dan Text
============================================================================================================================================

Struktur Project
lib/
├── main.dart                 # entry point, MaterialApp
├── models/
│   └── katalog.dart          # model data katalog (nama, harga, deskripsi, dll)
└── screens/
    ├── beranda_screen.dart   # Screen 1 - daftar katalog (StatelessWidget)
    └── detail_screen.dart    # Screen 2 - detail katalog (StatefulWidget)
============================================================================================================================================

Setup Project
Pastikan Flutter SDK sudah terinstall dan flutter doctor tidak menunjukkan error kritis.
Clone repository ini:
bash
   git clone <https://github.com/josswinaya/flutter>
   cd <->
============================================================================================================================================

Install dependencies:
bash
   flutter pub get
Menjalankan Aplikasi (Server Lokal / Emulator)
============================================================================================================================================

Cek device/emulator yang tersedia:

bash
flutter devices
============================================================================================================================================

Jalankan aplikasi:

bash
flutter run -d emulator-5554

Ganti emulator-5554 sesuai id device/emulator yang aktif di sistem kamu.