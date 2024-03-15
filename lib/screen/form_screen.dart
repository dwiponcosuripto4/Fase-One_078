import 'package:flutter/material.dart';
import 'package:ucp1/screen/makan_screen.dart';
import 'package:ucp1/widget/footer_form.dart';
import 'package:ucp1/widget/form_data.dart';
import 'package:ucp1/widget/header_form.dart';

class DataForm extends StatelessWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var hp = TextEditingController();
    var alamat = TextEditingController();
    var gender = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderForm(),
                Expanded(
                  child: FormWidget(
                    formKey: formKey,
                    etnama: nama,
                    ethp: hp,
                    etalamat: alamat,
                    etgender: gender,
                  ),
                ),
                FooterWidget(
                  onPressContinue: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MakanScreen(nama: nama.text, hp: hp.text),
                          ),
                          (route) => false);
                          
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
        ),
      ),
    );
  }
}
