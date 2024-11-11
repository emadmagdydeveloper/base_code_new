import 'package:ditch_it/injection.dart';
import 'package:ditch_it/multiproviders.dart';
import 'package:ditch_it/presentations/screens/onboardingModule/splashScreen/splashScreen.dart';
import 'package:ditch_it/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/app_theme/theme.dart';
import 'core/constants/constants.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  await init();
  runApp(GenerateMultiProviders(
      child: EasyLocalization(
        supportedLocales: appLanguage.map((e) => Locale(e.languageCode,e.countryCode)).toList(),
        startLocale: Locale(appLanguage[0].languageCode,appLanguage[0].countryCode),
        saveLocale: true,
        useOnlyLangCode: false,
        useFallbackTranslations: true,
        fallbackLocale: Locale(appLanguage[0].languageCode,appLanguage[0].countryCode),
        path: 'assets/languages',
        child: const MyApp(),
      )));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, _) {
      return MaterialApp(
        title: 'DitchIt',
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        home: const SplashScreen(),
      );
    });
  }

}
