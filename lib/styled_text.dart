import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // StyledText({key}): super(key: key);
  // Shorthand for the above line

  // const StyledText(String text, {super.key});
  const StyledText (this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
