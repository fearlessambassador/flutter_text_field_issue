import 'package:flutter/material.dart';
import 'package:flutter_text_field_issue/TextFieldPage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter text field issue"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const TextFieldPage(),
                  ),
            );
          },
          child: const Text("Go to text field"),
        ),
      ),
    );
  }
}
