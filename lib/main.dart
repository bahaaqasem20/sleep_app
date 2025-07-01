import 'package:flutter/material.dart';

import 'package:sleep_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // applay San-Fransisco to the whole prject
      theme: ThemeData(fontFamily: 'SF'),
      home: Welcome(),
    );
  }
}
