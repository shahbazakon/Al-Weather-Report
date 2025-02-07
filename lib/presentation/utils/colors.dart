import 'package:flutter/material.dart';

const Color primaryColor = Colors.blueAccent;
const Color whiteColor = Colors.white;
const Color blackColor = Color(0xFF000000);
const Color errorColor = Color(0xFFE74C3C);
const Color strokeColor = Color(0xFFE4E6EC);
const Color shadowColor = Color(0xFFBD87FF);

// text
const Color textColor = Color(0xFF1B1918);
const Color headerTextColor = Color(0xFF2B2D33);
const Color greyTextColor = Color(0xFF8799A5);

LinearGradient get primaryDarkGradient => const LinearGradient(
      colors: [
        primaryColor,
        blackColor,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

LinearGradient get primaryLightGradient => const LinearGradient(
      colors: [
        primaryColor,
        blackColor,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
