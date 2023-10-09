/// Mengimpor pustaka dan file yang diperlukan untuk aplikasi Flutter.
import 'package:book_app/pages/home_page.dart'; /// Mengimpor halaman beranda.
import 'package:flutter/material.dart'; /// Mengimpor pustaka Flutter Material.

void main() {
  /// Titik masuk dari aplikasi Flutter.
  runApp(const MyApp()); /// Menjalankan widget MyApp sebagai root dari aplikasi.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Widget ini mendefinisikan seluruh aplikasi Flutter.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Membuat MaterialApp, yang merupakan wadah untuk seluruh aplikasi.
      title: 'Book App', /// Menetapkan judul aplikasi.
      debugShowCheckedModeBanner: false, /// Menonaktifkan banner debug di sudut kanan atas.
      theme: ThemeData(
        /// Menentukan data tema aplikasi.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), /// Mengatur skema warna.
        useMaterial3: true, /// Mengaktifkan komponen desain Material 3.
      ),
      home: const HomePage(activeUser: 'John'), /// Menetapkan halaman beranda aplikasi.
      /// home: const PracticePage(), /// Anda dapat beralih ke halaman lain, seperti PracticePage, jika diperlukan.
    );
  }
}
