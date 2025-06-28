import 'package:flutter/material.dart';
import 'package:nba_app/app/router.dart';
import 'package:nba_app/app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Basketball',
      theme: AppTheme.darkTheme,
      routerConfig: appRoutes,
    );
  }
}
