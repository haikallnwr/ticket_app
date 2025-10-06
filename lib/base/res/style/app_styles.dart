import 'package:flutter/material.dart';

Color primary = const Color(0xFF678daf);

class AppStyles{
  static Color primaryColor = primary;
  static Color bgColor = Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color TicketBlue = const Color(0xFF526799);
  static Color TicketOrange = const Color(0xFFF37B67);
  static Color KakiColor = const Color(0xFFd2bdb6);
  static Color PlaneColor = const Color(0xFFBFC2DF);
  static Color FindTicketColor = const Color(0xD91130CE);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textColor);

  static TextStyle headLineStyle1 = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: textColor);

  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: textColor);

  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,);

  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,);
}