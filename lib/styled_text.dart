import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // StyledText({key}): super(key: key);
  // Shorthand for the above line
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Lorem Ipsum',
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
