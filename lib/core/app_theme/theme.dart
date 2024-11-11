import 'package:ditch_it/core/app_theme/app_colors.dart';
import 'package:ditch_it/core/extensions/num_extensions.dart';
import 'package:ditch_it/core/utils/preferences.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static bool isDarkMode() {
    Preferences preferences = Preferences();
    return preferences.isDarkMode();
  }

  ThemeData themeLight() {
    return ThemeData(
        brightness:  Brightness.light,
        primaryColor: AppColors.primaryColor,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        scaffoldBackgroundColor: AppColors.white,
        canvasColor: AppColors.white,
        dialogBackgroundColor: AppColors.white,
        textSelectionTheme:  const TextSelectionThemeData(cursorColor: AppColors.primaryColor,selectionHandleColor: AppColors.primaryColor,selectionColor: AppColors.primaryColor),
        cardTheme: const CardTheme(surfaceTintColor: Colors.transparent),
        bottomSheetTheme:  BottomSheetThemeData(backgroundColor:Colors.white,surfaceTintColor: Colors.transparent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(24.r),topRight: Radius.circular(24.r)))),


    );
  }
}
