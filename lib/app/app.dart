import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/theme_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor


  static final MyApp instance =MyApp._internal(); // single instance (singleton)

  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
