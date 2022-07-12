import '../../generated/todos.pb.dart';
import 'todo_impl.dart';

abstract class ITodo {
  factory ITodo() => TodoImpl();

  Todos getTodos();

  Todo editTodo(Todo request);

  Empty deleteTodo(Todo request);

  Todo addTodo(Todo request);
}
