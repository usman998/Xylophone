import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void voiceNumber(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int pressNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          voiceNumber(pressNumber);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, pressNumber: 1),
              buildKey(color: Colors.orange, pressNumber: 2),
              buildKey(color: Colors.yellow, pressNumber: 3),
              buildKey(color: Colors.green, pressNumber: 4),
              buildKey(color: Colors.grey, pressNumber: 5),
              buildKey(color: Colors.blue, pressNumber: 6),
              buildKey(color: Colors.purple, pressNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
// FlatButton(
// onPressed: () {
// final player = AudioCache();
// player.play('note1.wav');
// },
// child: Text('click me'),
// )
