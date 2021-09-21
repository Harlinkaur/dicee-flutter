import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        appBar: AppBar(
          title: Center(child: Text('DICE')),
          backgroundColor: Colors.blue[600],
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
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void randomDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; //0-5+1
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  randomDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  randomDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ),
      ]),
    );
  }
}
