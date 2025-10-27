import 'package:flutter/material.dart';

class PrediksiPage extends StatefulWidget {
  @override
  _PrediksiPageState createState() => _PrediksiPageState();
}

class _PrediksiPageState extends State<PrediksiPage> {
  final TextEditingController _hargaController = TextEditingController();
  String _hasilArima = '';
  String _hasilLstm = '';

  void _bandingkanPrediksi() {
    setState(() {
      if (_hargaController.text.isEmpty) {
        _hasilArima = 'Masukkan harga terlebih dahulu!';
        _hasilLstm = '';
      } else {
        double harga = double.tryParse(_hargaController.text) ?? 0;

        // Simulasi hasil prediksi
        double hasilArima = harga * 1.04; // naik 4% (simulasi ARIMA)
        double hasilLstm = harga * 1.06;  // naik 6% (simulasi LSTM)

        _hasilArima = 'ARIMA: Rp ${hasilArima.toStringAsFixed(0)}';
        _hasilLstm = 'LSTM: Rp ${hasilLstm.toStringAsFixed(0)}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Masukkan Harga Barang Saat Ini',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _hargaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Contoh: 150000',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _bandingkanPrediksi,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text('Bandingkan Prediksi'),
            ),
            const SizedBox(height: 30),

            if (_hasilArima.isNotEmpty)
              Column(
                children: [
                  const Text(
                    'Hasil Perbandingan:',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _hasilArima,
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _hasilLstm,
                    style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Catatan: Hasil di atas adalah simulasi perbandingan metode ARIMA dan LSTM.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
