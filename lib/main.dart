import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(EightBallMagicApp());
}

class EightBallMagicApp extends StatefulWidget {
  EightBallMagicApp({Key? key}) : super(key: key);

  @override
  _EightBallMagicAppState createState() => _EightBallMagicAppState();
}

class _EightBallMagicAppState extends State<EightBallMagicApp> {
  int index = 0;
  var color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Ask me Anything"),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[600],
          ),
          body: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  index = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$index.png'),
            ),
          ),
        ),
      ),
    );
  }
}
