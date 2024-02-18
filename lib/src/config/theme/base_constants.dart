import 'package:flutter/material.dart';

abstract class BaseConstant {

  /// app font families
  static const String geometric = 'Geometric';
  static const String roadway = 'Roadway';
  static const String beteNoir = 'BeteNoir';
  static const String soinSans = 'Soin_Sans';
  static const String proxmiaMedium = 'ProximaSoft-Medium';
  static const String proximaLight = 'ProximaSoft-Light';
  static const String proximaBold = 'ProximaSoft-Bold';
  static const String soinLight = 'SoinSansNeue-Light';
  static const String soinMedium = 'SoinSansNeue-Medium';


  abstract Color colorSurface;
  abstract Color colorOnSurface;
  abstract Color colorBackground;
  abstract Color colorOnBackground;
  abstract final Color colorOnSurfaceEmphasisHigh;
  abstract final Color colorOnSurfaceEmphasisMedium;
  abstract final Color colorOnSurfaceEmphasisDisabled;
  abstract final Color statusBarColor;

  abstract final ThemeData themeData;

  Color colorPrimary = const Color(0xFF1CDAC5);
  Color colorOnPrimary = Colors.white;
  Color colorSecondary = const Color(0xFFC5C6C7);
  Color colorOnSecondary = const Color(0xFF1F2833);
  Color colorTertiary = const Color(0xFF0B0C10);
  Color colorOnTertiary = const Color(0xFF45A29E);
  Color colorError = const Color(0xFFEF6A6B);
  Color colorOnError = Colors.white;
}
