import 'package:flutter/material.dart';

import 'package:flutter_fundamental/gradient_container.dart';

void main() {
  const colors = [Color.fromARGB(255, 26, 2, 80), Colors.grey];
  const text = 'Lorem Ipsum';

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(colors, text),
    ),
  ));
}
