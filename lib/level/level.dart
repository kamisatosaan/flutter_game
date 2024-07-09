import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:games/actors/player.dart';

class Level extends World {
  late TiledComponent level;

  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load('Level-01.tmx', Vector2.all(16));
    add(level);
    // final spawnPointsLayer = level.tileMap.getLayer<ObjectGroup>('SpawnPoints');
    // for (final spawnPoints in spawnPointsLayer!.objects) {
    //   switch (spawnPoints.class_) {
    //     case 'Player':
    //       final player = Player(
    //         character: 'Ninja Frog',
    //         position: Vector2(spawnPoints.x, spawnPoints.y),
    //       );
    //       add(player);
    //       break;
    //     default:
    //   }
    // }

    add(Player(character: 'Ninja Frog'));
    return super.onLoad();
  }
}
