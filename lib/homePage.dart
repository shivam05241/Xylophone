import 'package:flutter/material.dart';
import 'audioPlayer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  Expanded customButton({Color color, String file}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          audioPlayer.playAsset(file);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            customButton(
                color: Colors.blueAccent,
                file: "assets/audio/assets_note1.wav"),
            customButton(
                color: Colors.redAccent, file: "assets/audio/assets_note2.wav"),
            customButton(
                color: Colors.yellow, file: "assets/audio/assets_note3.wav"),
            customButton(
                color: Colors.green, file: "assets/audio/assets_note4.wav"),
            customButton(
                color: Colors.pink, file: "assets/audio/assets_note5.wav"),
            customButton(
                color: Colors.blueGrey, file: "assets/audio/assets_note6.wav"),
            customButton(
                color: Colors.black54, file: "assets/audio/assets_note7.wav"),
          ],
        ),
      ),
    );
  }
}
