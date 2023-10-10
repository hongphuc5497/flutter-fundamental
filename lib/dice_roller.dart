import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_fundamental/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.amber[300],
              textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.amber,
              ),
            ),
            child: const StyledText('Roll Dice')),
      ],
    );
  }
}
