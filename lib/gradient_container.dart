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
  GradientContainer(this.color1, this.color2, this.text, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.indigo,
        text = 'Called from purple func';

  final Color color1;
  final Color color2;

  final String text;

  var activeDiceImagePath = 'assets/images/dice-2.png';

  void rollDice() {
    print(activeDiceImagePath);
    List<int> numbers = List.generate(6, (index) => index + 1);
    for (int numb in numbers) {
      activeDiceImagePath = 'assets/images/dice-$numb.png';
      print(activeDiceImagePath);
    }
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Column(
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
                child: StyledText(text)),
          ],
        ),
      ),
    );
  }
}
