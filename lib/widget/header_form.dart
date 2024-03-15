import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text("Restoran Seafood mantap"),
        SizedBox(
          height: 25,
        ),
        
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://img.freepik.com/free-vector/restaurant-logo-food-business-template-branding-design-vector_53876-136271.jpg"
          ),
          radius: 80,
        )
      ],
    );
  }
}