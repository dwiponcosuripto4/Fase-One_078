import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.nama,
    required this.hp,
    required this.makan,
    required this.minum,
    required this.dessert,
  }) : super(key: key);

  final String nama;
  final String hp;
  final String makan;
  final String minum;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pesanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pesanan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Nama: $nama'),
            Text('Nomor HP: $hp'),
            Text('Makanan: $makan'),
            Text('Minuman: $minum'),
            Text('Dessert: $dessert'),
          ],
        ),
      ),
    );
  }
}
