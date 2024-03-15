import 'package:flutter/material.dart';

class MakanForm extends StatefulWidget {
  const MakanForm({
    Key? key,
    required this.formKey,
    required this.etmakan,
    required this.etminum,
    required this.etdessert
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController etmakan;
  final TextEditingController etminum;
  final TextEditingController etdessert;

  @override
  _MakanFormState createState() => _MakanFormState();
}

class _MakanFormState extends State<MakanForm> {
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etmakan,
            decoration: const InputDecoration(
              labelText: 'Makanan',
              hintText: "Masukkan Pesanan",
              prefixIcon: Icon(Icons.food_bank),
            ),
            
          ),
          TextFormField(
            controller: widget.etminum,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'hp',
              hintText: "Masukkan Pesanan",
              prefixIcon: Icon(Icons.no_drinks),
            ),
            
          ),
          TextFormField(
            controller: widget.etdessert,
            decoration: const InputDecoration(
              labelText: 'dessert',
              hintText: "Masukan pesanan",
              prefixIcon: Icon(Icons.cake),
            ),
            
          ),
          
        ],
      ),
    );
  }
}
