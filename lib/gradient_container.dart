import 'package:flutter/material.dart';

import 'package:flutter_fundamental/styled_text.dart';

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  // Shorthand for the above line
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.amber, Colors.grey],
            begin: Alignment.topRight,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
