import 'dart:convert';

import 'package:api_rest_dart/resources/album/album_service.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

final jsonHeader = {'Content-Type': 'application/json'};

class AlbumRoute {
  Router get router {
    final router = Router();

    router.get('/', (Request req) {
      return Response.ok(jsonEncode(AlbumService().getAllAlbums()),
          headers: jsonHeader);
    });

    return router;
  }
}
