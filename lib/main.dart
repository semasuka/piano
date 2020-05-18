import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      splashColor: Colors.transparent,
                      color: Colors.white,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      splashColor: Colors.transparent,
                      color: Colors.white,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      color: Colors.white,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      splashColor: Colors.transparent,
                      color: Colors.white,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      color: Colors.white,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: FlatButton(
                      color: Colors.white,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        print('key press');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: 0.95,
                  child: FlatButton(
                    color: Colors.white,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      print('key press');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
