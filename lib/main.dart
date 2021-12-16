import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:verosa/activity/home.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  );

  ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
  );

  bool _light = true;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Verosa',
      debugShowCheckedModeBanner: false,
      theme: _light ? _lightTheme : _darkTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
