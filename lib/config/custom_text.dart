
import 'package:flutter/material.dart';
import 'colors.dart'; // Import your custom colors file if you have one.

class AppTextStyles {
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Lato', // Ensure it matches your font family in pubspec.yaml
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color:AppColors.white, // Replace with your custom color or Colors.black
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Lato',
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: AppColors.background,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: 'Lato',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primary, // Use a custom primary color
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Lato',
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.tertiary, // Secondary text color
  );

  // Add more styles as needed
}
