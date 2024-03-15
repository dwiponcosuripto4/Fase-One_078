import 'package:flutter/material.dart';

class HeaderMakan extends StatelessWidget {
  const HeaderMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text("Data Makanan"),
        SizedBox(
          height: 25,
        ),
        
      ],
    );
  }
}