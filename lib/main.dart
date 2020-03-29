import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'XyloPhone'
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: FlatButton(
                onPressed: (){
                  final player=AudioCache();
                  player.play('note1.wav');
                },
                child: Text('click me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
