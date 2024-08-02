part of '../clear_design_system.dart';

//LIGHT THEME

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primaryColor: primary,
  scaffoldBackgroundColor: background,
  textTheme: textTheme,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: neutral100,
    selectionColor: primary100,
    selectionHandleColor: primary,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: white,
    centerTitle: true,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: black),
    titleTextStyle: GoogleFonts.lexend(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: neutral900,
    ),
  ),
);
