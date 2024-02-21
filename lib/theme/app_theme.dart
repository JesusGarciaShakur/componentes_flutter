import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante del color primario
  static const primaryColor = Color.fromARGB(235, 252, 251, 251);
  static const secondaryColor = Color.fromARGB(235, 234, 231, 231);
  static const backColor = Color.fromARGB(193, 11, 218, 237);
  static const appBarColor = Color.fromARGB(193, 183, 187, 188);
  //Definicion del tema del color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: appBarColor,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.acme(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        color: primaryColor,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 2.0,
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
