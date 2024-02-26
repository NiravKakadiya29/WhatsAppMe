import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/utils/colors.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: backgroundLight,
    scaffoldBackgroundColor: backgroundLight,
    extensions: [CustomThemeExtension.lightMode],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenLight,
        foregroundColor: backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
