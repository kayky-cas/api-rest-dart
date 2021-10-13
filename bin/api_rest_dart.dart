import 'package:api_rest_dart/resources/album/album_route.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final app = Router();

  app.mount('/album', AlbumRoute().router);

  app.get('/', (Request req) {
    return Response.ok('Hello World');
  });

  await io.serve(app, 'localhost', 3000);
}
