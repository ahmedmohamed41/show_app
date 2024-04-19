import 'package:flutter/material.dart';
import 'package:store_app/presentation/resources/routes_manager.dart';
import 'package:store_app/presentation/resources/theme_manager.dart';

class ShowApp extends StatefulWidget {
  // named constructor
  ShowApp._internal();

  static final ShowApp _instance = ShowApp._internal();

  factory ShowApp() => _instance;

  @override
  State<ShowApp> createState() => _ShowAppState();
}

class _ShowAppState extends State<ShowApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
