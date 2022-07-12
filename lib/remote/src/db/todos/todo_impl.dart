import '../../generated/todos.pb.dart';
import '../database.dart';
import 'todo.dart';

class TodoImpl implements ITodo {
  @override
  Todos getTodos() {
    return Todos()..todos.addAll(todos);
  }

  @override
  Todo addTodo(Todo todo) {
    todos.add(todo);
    return todo;
  }

  @override
  Empty deleteTodo(Todo todo) {
    todos.removeWhere((element) => element.id == todo.id);
    return Empty();
  }

  @override
  Todo editTodo(Todo todo) {
    final index = todos.indexWhere((element) => element.id == todo.id);
    todos[index] = todo;
    return todo;
  }
}
