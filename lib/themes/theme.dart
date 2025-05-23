import 'package:flutter/material.dart';

import 'colors.dart';

var theme = ThemeData(
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: ThemeColors.gray1,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontFamily: 'Montserrat'),
    headlineMedium: TextStyle(
        color: ThemeColors.gray2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Montserrat'),
    headlineSmall: TextStyle(
        color: ThemeColors.gray2,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Montserrat'),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    titleMedium: TextStyle(
      color: ThemeColors.gray2,
      fontWeight: FontWeight.w500,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    bodyMedium: TextStyle(
      color: ThemeColors.gray1,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    displayMedium: TextStyle(
      color: ThemeColors.gray10,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
  ),
);
