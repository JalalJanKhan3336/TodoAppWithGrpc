import 'package:todoapp/remote/src/db/database.dart';

import '../db/todos/todo.dart';
import '../generated/todos.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';

class TodoService extends TodoServiceBase {
  final _todo = ITodo();

  @override
  Future<Todo> addTodo(ServiceCall call, Todo request) async =>
      _todo.addTodo(request);

  @override
  Future<Empty> deleteTodo(ServiceCall call, Todo request) async =>
      _todo.deleteTodo(request);

  @override
  Future<Todo> editTodo(ServiceCall call, Todo request) async =>
      _todo.editTodo(request);

  @override
  Future<Todos> getTodos(ServiceCall call, Empty request) async => _todo.getTodos();

}
