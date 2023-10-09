import 'package:flutter/material.dart';

import 'package:flutter_fundamental/styled_text.dart';

// Variable declarations
// var startAlignment = Alignment.topLeft;
// var startAlignment;
// Alignment? startAlignment;
// final startAlignment = Alignment.topLeft;

Alignment startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// * 1st approach
// class GradientContainer extends StatelessWidget {
// GradientContainer({key}): super(key: key);
// Shorthand for the above line

// postional agrs: const GradientContainer(this.colors, this.text, {super.key});
// named agrs:
//   const GradientContainer({super.key, required this.colors, required this.text});

//   final List<Color> colors;

//   final String text;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors, begin: startAlignment, end: endAlignment),
//       ),
//       child: Center(
//         child: StyledText(text),
//       ),
//     );
//   }
// }

// * 2nd approach
class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  // Shorthand for the above line

  // postional agrs: const GradientContainer(this.colors, this.text, {super.key});
  // named agrs:
  const GradientContainer(this.color1, this.color2, this.text, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.indigo,
        text = 'Called from purple func';

  final Color color1;
  final Color color2;

  final String text;

  void rollDice() {
    print('Rolling dice...');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/dice-2.png',
            width: 200,
          ),
          TextButton(onPressed: rollDice, child: StyledText(text)),
        ],
      ),
    );
  }
}
