import 'package:flutter/material.dart';

class InformasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.info, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              'Aplikasi Prediksi Harga Barang di Marketplace',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text(
              'Nama: Meifinatul Mardiyah\nNPM: 2022020100032\nProdi: Teknik Informatika',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
