import 'package:flutter/material.dart';
import 'package:todoapp/app/add_note.dart';
import 'package:todoapp/remote/bin/client.dart';
import 'package:todoapp/remote/src/generated/todos.pb.dart';

class HomePage extends StatelessWidget {
  final _client = MyClient();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AddNoteScreen()))
        },
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: _client.getNotes(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                final list = (snapshot.data as List<Todo>);
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(list[index].title),
                      subtitle: Text(list[index].description),
                    );
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
