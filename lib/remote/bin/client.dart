import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:todoapp/remote/src/generated/todos.pbgrpc.dart';

class MyClient {
  bool _isClientSetUp = false;
  late TodoServiceClient _stud;

  static final _instance = MyClient._internal();

  MyClient._internal() {
    setUpClient();
  }

  factory MyClient() {
    return _instance;
  }

  Future<void> setUpClient() async {
    if (!_isClientSetUp) {
      final channel = ClientChannel(
        'localhost',
        port: 50051,
        options: ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
          codecRegistry:
              CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
          connectionTimeout: const Duration(seconds: 60),
        ),
      );

      _stud = TodoServiceClient(channel);
      _isClientSetUp = true;
    }
  }

  // Add New Note
  Future<Todo> addNewNote(String title, String description) async {
    await setUpClient();

    final Todo note = Todo(
        id: Random().nextInt(10000),
        title: title,
        description: description,
        isCompleted: false);

    return _stud.addTodo(note);
  }

  Future<List<Todo>> getNotes() async {
    await setUpClient();

    final todos = await _stud.getTodos(Empty());
    print("\nonGetNotes:\n");

    print("Json: ${todos.writeToJson()}\n");

    for (var todo in todos.todos) {
      print(
          '{id: ${todo.id},title: ${todo.title},description: ${todo.description},isCompleted: ${todo.isCompleted}}\n');
    }

    return todos.todos;
  }
}
