import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Jadwal Pertandingan Basket',
  theme: ThemeData(
    primarySwatch: Colors.yellow,
    textTheme: GoogleFonts.openSansTextTheme(), // Menggunakan Open Sans sebagai font default
  ),
  home: JadwalPertandinganScreen(),
);

  }
}

class JadwalPertandinganScreen extends StatelessWidget {
  final List<String> jadwalPertandingan = [
    'Pertandingan 1 - Tanggal: 10 Oktober 2023, Pukul 18:00',
    'Pertandingan 2 - Tanggal: 12 Oktober 2023, Pukul 20:00',
    'Pertandingan 3 - Tanggal: 15 Oktober 2023, Pukul 17:30',
    'Pertandingan 4 - Tanggal: 18 Oktober 2023, Pukul 19:15',
    'Pertandingan 5 - Tanggal: 20 Oktober 2023, Pukul 21:00',
    'Pertandingan 6 - Tanggal: 22 Oktober 2023, Pukul 16:45',
    'Pertandingan 7 - Tanggal: 25 Oktober 2023, Pukul 18:30',
    'Pertandingan 8 - Tanggal: 28 Oktober 2023, Pukul 19:45',
    // Tambahkan lebih banyak jadwal pertandingan di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Pertandingan Basket'),
      ),
      body: ListView.builder(
        itemCount: jadwalPertandingan.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(jadwalPertandingan[index]),
            ),
          );
        },
      ),
    );
  }
}
