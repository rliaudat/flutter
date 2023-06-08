import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.yellow
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor=0}
    ):assert( selectedColor >= 0 , 'Selected color must be greater than 0'),
    assert( selectedColor < colorList.length, 'Lista de colores');

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[ selectedColor ],
      appBarTheme: const AppBarTheme(
        centerTitle: false // Se hace para que no se centralice mal
      )
    );
}