import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  BoxDecoration decoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
        ),
      ),
    );
  }

  FlatButton theButton(String note) {
    return FlatButton(
      splashColor: Colors.transparent,
      color: Colors.white,
      onPressed: () {
        final player = AudioCache();
        player.play('$note.mp3');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
    );
  }

  Positioned blackSmallKeyTop(String note) {
    return Positioned(
      left: 10,
      height: 80,
      width: 250,
      top: -40,
      child: FlatButton(
        splashColor: Colors.transparent,
        color: Colors.black,
        onPressed: () {
          final player = AudioCache();
          player.play('$note.mp3');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Positioned blackSmallKeyBottom(String note) {
    return Positioned(
      left: 10,
      height: 80,
      width: 250,
      bottom: -40,
      child: FlatButton(
        splashColor: Colors.transparent,
        color: Colors.black,
        onPressed: () {
          final player = AudioCache();
          player.play('$note.mp3');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // brown background color of the app
        backgroundColor: Color.fromRGBO(101, 51, 8, 1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            // back line that separate the keyboard
                            decoration: decoration(),
                            // E note key
                            child: theButton('e'),
                          ),
                        ),
                        blackSmallKeyBottom('d#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            decoration: decoration(),
                            child: theButton('d'),
                          ),
                        ),
                        blackSmallKeyTop('d#'),
                        blackSmallKeyBottom('c#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            decoration: decoration(),
                            child: theButton('c'),
                          ),
                        ),
                        blackSmallKeyTop('c#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            decoration: decoration(),
                            child: theButton('b'),
                          ),
                        ),
                        blackSmallKeyBottom('a#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            decoration: decoration(),
                            child: theButton('a'),
                          ),
                        ),
                        blackSmallKeyTop('a#'),
                        blackSmallKeyBottom('g#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Container(
                            decoration: decoration(),
                            child: theButton('g'),
                          ),
                        ),
                        blackSmallKeyTop('g#'),
                        blackSmallKeyBottom('f#'),
                      ]),
                ),
                Expanded(
                  child: Stack(
                      alignment: Alignment.bottomLeft,
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.95,
                          child: theButton('f'),
                        ),
                        blackSmallKeyTop('f#'),
                      ]),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
