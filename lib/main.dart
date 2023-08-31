import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF064BB5),
        scaffoldBackgroundColor: Color(0xFF064BB5),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFF064BB5)),
        ),
      ),
      home: HomePage(),
    ),
  );
}


