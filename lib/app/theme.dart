import 'package:flutter/material.dart';

class AppTheme {
  // Tekrar nesne oluşturulmasını engellemek için
  AppTheme._();
  static ThemeData get darkTheme => ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF00F6FF), //Primary Color
      surface: Color(0xFF0A1123), // Background
      onSurface: Color(0xFF080D19), // Background Dark
      secondary: Color(0xFFF2C94C), // Star
      onPrimary: Color(0xFFE3E8F3), // Copy
      tertiary: Color(0xFF131B2F), // Card
      tertiaryContainer: Color(0xFF24304B), // Leading Card
      onTertiaryContainer: Color(0xFF384A71), // Leading Card Hold
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: Color(0xFFE3E8F3)),
    ),
  );
}
