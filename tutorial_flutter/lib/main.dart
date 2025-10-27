import 'package:flutter/material.dart';
import 'main_menu.dart';

void main() {
  runApp(PrediksiApp());
}

class PrediksiApp extends StatelessWidget {
  const PrediksiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prediksi Harga Barang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
