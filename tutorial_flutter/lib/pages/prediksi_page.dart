import 'package:flutter/material.dart';

class PrediksiPage extends StatelessWidget {
  final String? itemName;
  final int? itemPrice;

  PrediksiPage({this.itemName, this.itemPrice});

  @override
  Widget build(BuildContext context) {
    // Contoh prediksi statis
    double arimaPrediksi = itemPrice != null ? itemPrice! * 1.05 : 0;
    double lstmPrediksi = itemPrice != null ? itemPrice! * 1.08 : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Prediksi Harga"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: itemName != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prediksi harga untuk: $itemName",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Card(
                    child: ListTile(
                      title: Text("Metode ARIMA"),
                      subtitle: Text("Prediksi Harga: Rp ${arimaPrediksi.toStringAsFixed(0)}"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text("Metode LSTM"),
                      subtitle: Text("Prediksi Harga: Rp ${lstmPrediksi.toStringAsFixed(0)}"),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                  "Pilih item dari Beranda untuk melihat prediksi",
                  style: TextStyle(fontSize: 16),
                ),
              ),
      ),
    );
  }
}
