import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setSource(AssetSource('note6.wav'));
                player.resume();
                await player.setPlaybackRate(0.9);
                // await player.play(DeviceFileSource('note1.wav'));
              },
              child: Image.asset('images/Krishna.jpeg'),
            ),
          )
        ),
      ),
    );
  }
}
