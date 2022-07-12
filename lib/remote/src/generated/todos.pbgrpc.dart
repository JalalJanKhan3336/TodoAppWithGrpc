///
//  Generated code. Do not modify.
//  source: todos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todos.pb.dart' as $0;
export 'todos.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$addTodo = $grpc.ClientMethod<$0.Todo, $0.Todo>(
      '/TodoService/addTodo',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$editTodo = $grpc.ClientMethod<$0.Todo, $0.Todo>(
      '/TodoService/editTodo',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$deleteTodo = $grpc.ClientMethod<$0.Todo, $0.Empty>(
      '/TodoService/deleteTodo',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getTodos = $grpc.ClientMethod<$0.Empty, $0.Todos>(
      '/TodoService/getTodos',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todos.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Todo> addTodo($0.Todo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todo> editTodo($0.Todo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteTodo($0.Todo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todos> getTodos($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodos, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Todo>(
        'addTodo',
        addTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Todo>(
        'editTodo',
        editTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Empty>(
        'deleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Todos>(
        'getTodos',
        getTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Todos value) => value.writeToBuffer()));
  }

  $async.Future<$0.Todo> addTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return addTodo(call, await request);
  }

  $async.Future<$0.Todo> editTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return editTodo(call, await request);
  }

  $async.Future<$0.Empty> deleteTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.Todos> getTodos_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTodos(call, await request);
  }

  $async.Future<$0.Todo> addTodo($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.Todo> editTodo($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.Empty> deleteTodo($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.Todos> getTodos($grpc.ServiceCall call, $0.Empty request);
}
