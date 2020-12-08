import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey(int note, Color keyColor) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(note);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.blue),
              buildKey(2, Colors.green),
              buildKey(3, Colors.red),
              buildKey(4, Colors.deepPurple),
              buildKey(5, Colors.yellowAccent),
              buildKey(6, Colors.pinkAccent),
              buildKey(7, Colors.cyanAccent[100]),
            ],
          ),
        ),
      ),
    );
  }
}
