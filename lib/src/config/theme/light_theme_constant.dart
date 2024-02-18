import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base_constants.dart';

class LightThemeConstant extends BaseConstant {
  @override
  Color colorSurface = const Color(0xffEDEDED);

  @override
  Color colorOnSurface = const Color(0xFF0B0C10);

  @override
  Color colorBackground = const Color(0xffEDEDED);

  @override
  Color colorOnBackground = const Color(0xFF0B0C10);

  @override
  Color get colorOnSurfaceEmphasisDisabled => colorOnSurface.withAlpha(51);

  @override
  Color get colorOnSurfaceEmphasisHigh => colorOnSurface.withAlpha(230);

  @override
  Color get colorOnSurfaceEmphasisMedium => colorOnSurface.withAlpha(153);

  @override
  Color get statusBarColor => const Color(0xFF0B0C10);

  @override
  ThemeData get themeData => ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
          displaySmall: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: -0.00833333333),
          headlineMedium: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0),
          headlineSmall: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.00735294118),
          titleLarge: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0),
          titleMedium: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.0125),
          titleSmall: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.009375),
          bodyLarge: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.00714285714),
          bodyMedium: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.03125),
          labelLarge: TextStyle(color: colorOnSurfaceEmphasisHigh, fontSize: 12, letterSpacing: 0.0333333333),
          bodySmall: TextStyle(color: colorOnSurfaceEmphasisHigh, letterSpacing: 0.0178571429)),
      appBarTheme: AppBarTheme(
          backgroundColor: statusBarColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarColor: statusBarColor,
              systemNavigationBarDividerColor: statusBarColor,
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: statusBarColor)),
      cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: colorPrimary,
          barBackgroundColor: colorBackground,
          scaffoldBackgroundColor: colorBackground,
          primaryContrastingColor: colorOnPrimary),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: colorPrimary,
          onPrimary: colorOnPrimary,
          secondary: colorSecondary,
          onSecondary: colorOnSecondary,
          error: colorError,
          onError: colorOnError,
          tertiary: colorTertiary,
          onTertiary: colorOnTertiary,
          background: colorBackground,
          onBackground: colorOnBackground,
          surface: colorSurface,
          onSurface: colorOnSurface),
      useMaterial3: true);
}
