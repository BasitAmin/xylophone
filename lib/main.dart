import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  void sound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({int c, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(c);
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
            children: <Widget>[
              buildKey(c: 1, color: Colors.red),
              buildKey(c: 2, color: Colors.orange),
              buildKey(c: 3, color: Colors.yellow),
              buildKey(c: 4, color: Colors.green),
              buildKey(c: 5, color: Colors.teal),
              buildKey(c: 6, color: Colors.blue),
              buildKey(c: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
