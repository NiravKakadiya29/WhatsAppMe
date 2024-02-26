import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/utils/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xFF25D366),
      greyColor: greyLight,
      blueColor: blueLight,
      langBtnBgColor: Color(0xFFF7F8FA),
      langBtnHighlightColor: Color(0xFFE8E8ED));
  static const darkMode = CustomThemeExtension(
      circleImageColor: greenDark,
      greyColor: greyDark,
      blueColor: blueDark,
      langBtnBgColor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A));
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnHighlightColor,
    this.langBtnBgColor,
  });
  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? blueColor,
    Color? greyColor,
    Color? langBtnHighlightColor,
    Color? langBtnBgColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
    );
  }
}
