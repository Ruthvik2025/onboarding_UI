import 'package:flutter/material.dart';
import 'package:introduction_page/package_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPages(),
    );
  }
}
