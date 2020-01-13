import 'package:flutter/material.dart';

class BackgroundAppTheme {
  static const Color startColor = Colors.redAccent;
  static const Color endColor = Colors.deepOrangeAccent;
  static const LinearGradient backgroundPrimary = LinearGradient(
    colors: [startColor, endColor],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0, 1],
  );
}
