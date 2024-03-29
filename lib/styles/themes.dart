import 'package:flutter/material.dart';
import 'color_resources.dart';
import 'text_styles.dart';

final light = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
  shadowColor: ColorResources.black,
  primaryColorLight: ColorResources.grey,
  primaryColor: ColorResources.darkGrey,
  primaryColorDark: ColorResources.black,
  backgroundColor: ColorResources.lightGrey,
  canvasColor: ColorResources.white,
  fontFamily: TextStyles.fontFamily,
  textTheme: TextTheme(
    headline1: TextStyles.title,
    headline6: TextStyles.regular.copyWith(fontWeight: FontWeight.w600, fontSize: 28),
    bodyText1: TextStyles.regular,
    bodyText2: TextStyles.small,
  ),
);

final dark = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
  shadowColor: ColorResources.white,
  primaryColorLight: ColorResources.black,
  primaryColor: ColorResources.grey,
  primaryColorDark: ColorResources.lightGrey,
  backgroundColor: Colors.black,
  canvasColor: ColorResources.black,
  fontFamily: TextStyles.fontFamily,
  textTheme: TextTheme(
    headline1: TextStyles.title.copyWith(color: ColorResources.white),
    headline6: TextStyles.bold.copyWith(color: ColorResources.white),
    bodyText1: TextStyles.regular,
    bodyText2: TextStyles.small,
  ),
);
