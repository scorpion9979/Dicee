import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  var leftDieNum = 1;
  var rightDieNum = 1;

  void throwDice() {
    setState(() {
      leftDieNum = Random().nextInt(6) + 1;
      rightDieNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: throwDice,
                child: Image.asset('images/dice$leftDieNum.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: throwDice,
                child: Image.asset('images/dice$rightDieNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
