import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white, // Corrigido: Adicionada a vírgula
    inversePrimary: Colors.grey.shade700,
  ),
);
