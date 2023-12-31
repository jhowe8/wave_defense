import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_isometric/flame_isometric.dart';


class WaveDefense extends FlameGame with HasGameRef {
  @override
  FutureOr<void> onLoad() async {
    final gameSize = gameRef.size;
    final flameIsometric = await FlameIsometric.create(
        tileMap: 'tile_map.png', tmx: 'tiles/iso.tmx');

    for (var i = 0; i < flameIsometric.layerLength; i++) {
      add(
        IsometricTileMapComponent(
          flameIsometric.tileset,
          flameIsometric.renderMatrixList[i],
          destTileSize: flameIsometric.srcTileSize,
          position:
          Vector2(gameSize.x / 2, flameIsometric.tileHeight.toDouble()),
        ),
      );
    }

    return super.onLoad();
  }
}
