import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wave_defense/wave_defense.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  //
  // WaveDefense game = WaveDefense();
  // runApp(GameWidget(game: kDebugMode ? WaveDefense() : game));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IsometricMap Sample',
      home: MainGamePage()
    );
  }
}

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  MainGameState createState() => MainGameState();
}

class MainGameState extends State<MainGamePage> {
  WaveDefense game = WaveDefense();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget(game: game),
        ],
      )
    );
  }
}
