import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_fundamental/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImagePath = 'assets/images/dice-2.png';
  // List<int> numbers = List.generate(6, (index) => index + 1);

  // void random(int min, int max) {
  //   return min + Random().nextInt(max - min);
  // }

  void rollDice() {
    setState(() {
      var num = 1 + Random().nextInt(6 - 1) ;
      activeDiceImagePath = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImagePath,
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
