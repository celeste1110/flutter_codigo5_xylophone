import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache=AudioCache();
  void playNote(int number){
    audioCache.play('audios/note$number.wav');
  }
  Widget buildKey(int number){
    return Expanded(
      child: Container(
        color: Colors.redAccent,
        child: TextButton(
            onPressed: () {
              playNote(number);
            },
            child: const Text(
              '',
            )),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Xlophone'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            buildKey(1),
            buildKey(2),
            buildKey(3),
            buildKey(4),
            buildKey(5),
            buildKey(6),
            buildKey(7)

          ],
        ));
  }
}
