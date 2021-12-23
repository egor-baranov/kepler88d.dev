import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_resources.dart';

class TextStyles {
  static const fontFamily = 'Rubik';

  static final title = GoogleFonts.getFont(
    fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w600,
    color: ColorResources.black,
  );

  static final regular = GoogleFonts.getFont(
    fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w300,
    color: ColorResources.black,
  );

  static final bold = title.copyWith(fontSize: 18);
  static final small = regular.copyWith(fontSize: 13);
}
