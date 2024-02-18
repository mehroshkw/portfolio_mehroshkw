import 'dart:io';
import 'package:flutter/material.dart';
import '../../../main.dart';
import '../../config/theme/export_theme.dart';


extension BuildContextExtension on BuildContext {
  Size get mediaSize => MediaQuery.of(this).size;

  ThemeData get theme => Theme.of(this);

  bool get isDarkTheme => theme.brightness == Brightness.dark;

  bool get isHaveBottomNotch => View.of(this).viewPadding.bottom > 0 && Platform.isIOS;

  double get statusBarHeight => MediaQuery.of(this).viewPadding.top;

  double get bottomNotchHeight => MediaQuery.of(this).viewPadding.bottom;

  BaseConstant get currentConstant => lightThemeConstant;

  void unfocus() => FocusScope.of(this).unfocus();
}
