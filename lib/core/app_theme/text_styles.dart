import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

String lang = navigatorKey.currentContext!.locale.languageCode;

class AppTextStyles {

  TextStyle normalText({double fontSize = 14,TextDecoration decoration = TextDecoration.none}){

    return TextStyle(fontSize: fontSize,fontFamily: lang=='ar'?'font_regular':'font_regular_en',decoration: decoration,decorationColor: Colors.red);
  }




}

extension TextStyleExtension on TextStyle{

  TextStyle textColorNormal(Color color) => copyWith(color: color ,fontFamily: lang=='ar'?'font_regular':'font_regular_en');
  TextStyle textColorBold(Color color) => copyWith(color: color,fontFamily: lang=='ar'?'font_bold':'font_bold_en' ,fontWeight: FontWeight.bold);
  TextStyle textColorNormalDecoration(Color color,Color decoration) => copyWith(color: color,fontFamily: lang=='ar'?'font_regular':'font_regular_en' ,fontWeight: FontWeight.normal,decorationColor: decoration,decoration: TextDecoration.underline);
  TextStyle textColorBoldDecoration(Color color,Color decoration) => copyWith(color: color,fontFamily: lang=='ar'?'font_bold':'font_bold_en' ,fontWeight: FontWeight.bold,decorationColor: decoration,decoration: TextDecoration.underline);

}

