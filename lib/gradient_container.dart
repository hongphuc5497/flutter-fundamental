import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter_fundamental/styled_text.dart';

// Variable declarations
// var startAlignment = Alignment.topLeft;
// var startAlignment;
// Alignment? startAlignment;
// final startAlignment = Alignment.topLeft;

Alignment startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  // Shorthand for the above line
  const GradientContainer(this.colors, this.text, {super.key});

  final List<Color> colors;

  final String text;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: StyledText(text),
      ),
    );
  }
}
