import 'package:flutter/material.dart';

class MakanScreen extends StatelessWidget {
  const MakanScreen({super.key, required this.nama});

  final String nama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, $nama"),
          ],
        ),
      ),
    );
  }
}