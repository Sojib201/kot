import 'package:flutter/material.dart';

class Utils {

  static TextStyle tableTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static TextStyle heading1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Utils.primaryColor,
  );


  static TextStyle heading2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Utils.textColor,
  );

  static TextStyle heading3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Utils.secondaryColor,
  );

  static Color thirdcolor = Color(0xFFFADCDC);
  static Color reservedTableColor = Color(0xFFFEC145);
  static Color bookedTableColor = Color(0xFFED7A08);
  static Color primaryColor = Color(0xFFFDFEFF);
  static Color secondaryColor = Color(0xFFEF4A44);

  static Color textColor = Color(0xFF000000);
  static Color delivery_collectionColor = Color(0xFFFEC145);

  static BorderRadius tableCardRadius = BorderRadius.circular(48.62);
}
