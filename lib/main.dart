import 'package:flutter/material.dart';
import '/config/config.dart';
import '/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App UI',
      theme: theme(),
      home: SplashScreen(),
      routes: routes,
    );
  }
}
