import 'package:flutter/material.dart';

import 'package:flutter_fundamental/gradient_container.dart';

void main() {
  const outputText = 'Roll Dice';

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // body: GradientContainer.purple(),
      body: GradientContainer(
        const Color.fromARGB(255, 33, 5, 109),
          const Color.fromARGB(255, 68, 21, 149),
        outputText
      ),
    ),
  ));
}
