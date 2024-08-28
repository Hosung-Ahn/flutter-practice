import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var diceImage = 'assets/images/dice-1.png';
  void rollDice() {
    int randomNumber = randomizer.nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(diceImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }

}
