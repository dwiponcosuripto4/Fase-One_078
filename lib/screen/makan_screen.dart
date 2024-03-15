import 'package:flutter/material.dart';
import 'package:ucp1/screen/detail_screen.dart';
import 'package:ucp1/widget/footer_makan.dart';
import 'package:ucp1/widget/form_makan.dart';

class MakanScreen extends StatelessWidget {
  const MakanScreen({super.key, required this.nama, required this.hp});

  final String nama;
  final String hp;
  @override
  Widget build(BuildContext context) {
    var makan = TextEditingController();
    var minum = TextEditingController();
    var dessert = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('Nama: $nama'),
            Text('Nomor HP: $hp'),
            SizedBox(height: 20),
            Expanded(
              child: MakanForm(
                  formKey: formKey,
                  etmakan: makan,
                  etminum: minum,
                  etdessert: dessert),
            ),
            FooterMakan(
              onPressContinue: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        nama: nama,
                        hp: hp,
                        makan: makan.text,
                        minum: minum.text,
                        dessert: dessert.text,
                      ),
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Silahkan pilih menu"),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
