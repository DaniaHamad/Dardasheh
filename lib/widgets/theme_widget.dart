import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch:  Colors.orange,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFF1BB30),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFFF1BB30),
      ),
    ),
    dividerColor: const Color(0xFFF1BB30),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFF1BB30)),
        ),
        floatingLabelStyle: const TextStyle(color: Color(0xFFF1BB30)),
        //suffixIconColor:  const Color(0xFFF1BB30),
        ),
    iconTheme: const IconThemeData(color: Color(0xFFF1BB30)),
  );
}
