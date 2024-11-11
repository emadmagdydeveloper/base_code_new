import 'package:ditch_it/core/app_theme/theme.dart';
import 'package:flutter/material.dart';

import 'core/utils/preferences.dart';

class ThemeProvider with ChangeNotifier{
  Preferences preferences = Preferences();
  ThemeData? theme;
  void changeDarkMode(){
    bool isDarkMode = preferences.isDarkMode();
    preferences.saveIsDarkMode(!isDarkMode);

    notifyListeners();
  }
}