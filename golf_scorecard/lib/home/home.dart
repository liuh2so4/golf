import 'package:flutter/material.dart';
import 'package:golf_scorecard/history/history.dart';
import 'package:golf_scorecard/scorecard/scorecard.dart';
import 'package:golf_scorecard/setting/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  OverlayEntry? entry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromARGB(197, 230, 252, 216),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            InkWell(
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 18, 71, 26),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    Text(
                      'NEW SCORECARD',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                height: 250,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 101, 212, 118),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
              onTap: showOverlay,
            ),
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              InkWell(
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 175,
                        width: 125,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 18, 71, 26),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      Text(
                        'HISTORY',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  height: 210,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(97, 34, 186, 55),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(
                          title: 'history',
                        ),
                      ));
                },
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 175,
                        width: 125,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 18, 71, 26),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      Text(
                        'SETTING',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  height: 210,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(99, 55, 205, 78),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingPage(
                                title: 'setting',
                              )));
                },
              ),
            ]),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  void showOverlay() {
    entry = OverlayEntry(
        builder: (context) => Positioned(
            top: 280,
            right: 100,
            left: 100,
            child: Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(117, 22, 137, 41),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  //對話框*3
                  ElevatedButton.icon(
                    icon: Icon(Icons.stop_circle_rounded),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreCardPage(
                                title: 'scorecard',
                                course: '南寶球場',
                                holes: 18,
                                date: '2015/3/24'),
                          ));
                      entry?.remove();
                      entry = null;
                    },
                    label: Text(
                      '確定',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ]))));

    final overlay = Overlay.of(this.context)!;
    overlay.insert(entry!);
  }
}
