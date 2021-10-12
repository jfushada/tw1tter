import 'package:flutter/material.dart';

class ThemeButton {
  ThemeButton._();

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.0),
    ),
  );
}
