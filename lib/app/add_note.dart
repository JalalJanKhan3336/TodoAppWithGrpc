import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todoapp/remote/bin/client.dart';
import 'package:todoapp/remote/src/generated/todos.pbgrpc.dart';

class AddNoteScreen extends StatelessWidget {
  final _client = MyClient();

  AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New Note",
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text("Title"),
            const SizedBox(height: 10),
            const Text("Input Field for Title"),
            const SizedBox(height: 10),
            const Text("Description"),
            const SizedBox(height: 10),
            const Text("Text Area for Description"),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                int num = Random().nextInt(100);
                _client
                    .addNewNote(
                        "Title $num", "Title $num description goes here.")
                    .then(
                      (value) => ScaffoldMessenger(
                        child: Text("${value.title} saved Successfully!"),
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
