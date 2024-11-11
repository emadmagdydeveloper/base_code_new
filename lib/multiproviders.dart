import 'package:ditch_it/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'injection.dart';

class GenerateMultiProviders extends StatelessWidget {
  final Widget child;

  const GenerateMultiProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<ThemeProvider>()),

      ],
      child: child,
    );
  }
}
