import 'package:flutter/material.dart';
import 'package:music_app/app/resources/app_colors.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color(0xFF06A0B5),
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  fontFamily: 'Century Gothic',
  textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 27),
      titleMedium: TextStyle(fontSize: 16),
      titleSmall: TextStyle(fontSize: 16),
      bodyLarge: TextStyle(fontSize: 44),
      bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 16)),
);
