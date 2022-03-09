import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDirNumber = 1;
  int rightDirNumber = 1;

  void changeNumber(){
    setState(() {
      leftDirNumber = Random().nextInt(6)+1;
      rightDirNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: changeNumber,
              child: Image.asset('images/dice$leftDirNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeNumber,
              child: Image.asset('images/dice$rightDirNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
