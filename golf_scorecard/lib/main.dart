import 'package:flutter/material.dart';
import 'package:golf_scorecard/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'golf',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'home'),
      //home: const History(title: 'history'),
      //home: const Setting(title: 'setting'),
    );
  }
}
