import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primaryColor: Colors.amber,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 10.00,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
