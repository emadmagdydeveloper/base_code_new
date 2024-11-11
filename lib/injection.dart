import 'package:dio/dio.dart';
import 'package:ditch_it/theme_provider.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';
final getIt = GetIt.instance;

Future<void> init() async{
  getIt.registerLazySingleton(() => ThemeProvider());
  ///preference
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  ///network
  getIt.registerLazySingleton(() => Dio());
  ///repositories



}