import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              splashColor: Colors.transparent,  
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  leftDiceNo = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              splashColor: Colors.transparent,  
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  rightDiceNo = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
