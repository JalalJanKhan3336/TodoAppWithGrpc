import 'package:grpc/grpc.dart';
import '../src/services/todo_service.dart';

Future<void> main() async {
  final services = [TodoService()];

  final server = Server(
    services,
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(port: 50051);
  print("Server is running on port ${server.port}");
}
