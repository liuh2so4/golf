import 'package:flutter/material.dart';
import 'package:golf_scorecard/home/home.dart';
import 'package:golf_scorecard/history/history.dart';
import 'package:golf_scorecard/setting/setting.dart';
import 'package:golf_scorecard/scorecard/scorecard.dart';

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
      //home: const HomePage(title: 'home'),
      //home: const HistoryPage(title: 'history'),
      //home: const SettingPage(title: 'setting'),
      home: const ScoreCardPage(
          title: 'scorecard', course: '南寶球場', holes: 18, date: '2015/3/24'),
    );
  }
}
