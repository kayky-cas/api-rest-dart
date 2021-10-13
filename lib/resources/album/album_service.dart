import 'dart:collection';
import 'package:api_rest_dart/resources/album/album_model.dart';
import 'package:cuid/cuid.dart' as cuid;

class AlbumService {
  final HashMap albums = HashMap<String, Album>();

  Album getAlbum(String id) {
    return albums[id];
  }

  Album createAlbum(Album album) {
    final String id = cuid.newCuid();

    album.id = id;
    albums[id] = album;

    return albums[id];
  }

  List<Album> getAllAlbums() {
    final listAlbums = <Album>[];

    albums.forEach((key, value) {
      listAlbums.add(value);
    });

    return listAlbums;
  }
}
