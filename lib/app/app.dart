import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Demo Home Page',
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
