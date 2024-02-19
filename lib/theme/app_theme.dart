import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante del color primario
  static const primaryColor = Color.fromARGB(239, 31, 219, 210);
  static const secondaryColor = Color.fromARGB(238, 0, 0, 0);
  static const backColor = Color.fromARGB(193, 73, 8, 225);
  //Definicion del tema del color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: primaryColor,
    appBarTheme: const AppBarTheme(
      color: backColor,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.acme(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),

      //fuente para textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
      ),
    ),
  );
}
