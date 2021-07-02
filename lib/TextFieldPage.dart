import 'package:flutter/material.dart';
import 'package:flutter_text_field_issue/Home.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter text field issue"),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 200,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Home(),
                      ),
                    );
                  },
                  child: const Text("Go back"),
                ),
                TextFormField(
                  // TODO REMOVE THIS AN THE KEYBOARD NO LONGER RE-APPEARS UNEXPECTEDLY
                  autofillHints: const [AutofillHints.email],
                ),
              ],
            )),
      ),
    );
  }
}
