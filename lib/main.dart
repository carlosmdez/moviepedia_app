import 'package:flutter/material.dart';
import 'package:moviepedia_app/router/app_router.dart';
import 'package:moviepedia_app/screens/home/home_screen.dart';
import 'package:moviepedia_app/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
