import 'package:flutter/material.dart';

class StoreApp extends StatefulWidget {
  // named constructor
  StoreApp._internal();

  static final StoreApp _instance = StoreApp._internal();

  factory StoreApp() => _instance;

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
