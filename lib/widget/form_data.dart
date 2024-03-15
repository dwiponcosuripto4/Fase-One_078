import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
    required this.formKey,
    required this.etnama,
    required this.ethp,
    required this.etalamat,
    required this.etgender,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController etnama;
  final TextEditingController ethp;
  final TextEditingController etalamat;
  final TextEditingController etgender;

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etnama,
            decoration: const InputDecoration(
              labelText: 'nama',
              hintText: "Masukan Nama",
              prefixIcon: Icon(Icons.people),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'masukan nama dg benar';
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.ethp,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'hp',
              hintText: "Masukan No telpon",
              prefixIcon: Icon(Icons.phone),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'masukan hp dengan benar';
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.etalamat,
            maxLines: null,
            decoration: const InputDecoration(
              labelText: 'alamat',
              hintText: "Masukan alamat",
              prefixIcon: Icon(Icons.home),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'masukan alamat dg benar';
              }
              return null;
            },
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                  'Jenis Kelamin:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                              ),
                ],
              ),
              Row(
                children: [
                  
                  Radio<String>(
                    value: 'Laki-laki',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                        widget.etgender.text = value!;
                      });
                    },
                  ),
                  Text('Laki-laki'),
                  Radio<String>(
                    value: 'Perempuan',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                        widget.etgender.text = value!;
                      });
                    },
                  ),
                  Text('Perempuan'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
