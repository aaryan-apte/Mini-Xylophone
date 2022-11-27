import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // final player = AudioPlayer();
  Future<void> playSound(int x)
  async {
    final player = AudioPlayer();
    await player.setSource(AssetSource('note$x.wav'));
    player.resume();
  }

  // var colorList = ['red', 'orange', 'yellow', 'lightGreen', 'green', 'indigo', 'purple'];

  Expanded keyPlayer({required Color colour, required int soundNumber})
  {
    return Expanded(
      child: TextButton(
        child: Container(
          color: colour,

      ),
      onPressed: () {
        playSound(soundNumber);
    },
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
             keyPlayer(colour: Colors.red, soundNumber: 1),
             keyPlayer(colour: Colors.orange, soundNumber: 2),
             keyPlayer(colour: Colors.yellow, soundNumber: 3),
             keyPlayer(colour: Colors.lightGreen, soundNumber: 4),
             keyPlayer(colour: Colors.green, soundNumber: 5),
             keyPlayer(colour: Colors.blue, soundNumber: 6),
             keyPlayer(colour: Colors.purple, soundNumber: 7),
          ],
          )
        ),
      ),
    );
  }
}
