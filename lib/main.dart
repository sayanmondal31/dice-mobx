import 'dart:ui';

import 'package:dice_mobx/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(DiceCounter());

class DiceCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceHome(),
    );
  }
}

class DiceHome extends StatelessWidget {
  final DiceCount diceCount = DiceCount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice with mobx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: diceCount.roll,
                    child: Observer(builder: (_) {
                      return Image.asset("images/dice_${diceCount.left}.png");
                    }),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: diceCount.roll,
                    child: Observer(builder: (_) {
                      return Image.asset("images/dice_${diceCount.right}.png");
                    }),
                  ),
                ),
              ),
            ],
          ),
          Observer(builder: (_) {
            return Text("your total score ${diceCount.total}");
          }),
        ],
      ),
    );
  }
}
