import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
    required this.onPressContinue,
  }) : super(key: key);

  final VoidCallback onPressContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressContinue,
          child: const Text('Lanjut'),
        ),
      ],
    );
  }
}
