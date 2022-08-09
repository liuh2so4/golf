import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  bool _visible = false;
  String _course = '';
  int _holes = 0;
  String _date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Stack(alignment: Alignment.center, children: <Widget>[
          InkWell(
              splashColor: Colors.white,
              focusColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              canRequestFocus: false,
              enableFeedback: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
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
                      onTap: () {
                        if (_visible == true) {
                          setState(() {
                            _visible = false;
                          });
                        } else {
                          setState(() {
                            _visible = true;
                          });
                        }
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
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
                            if (_visible == true) {
                              setState(() {
                                _visible = false;
                              });
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HistoryPage(
                                      title: 'history',
                                    ),
                                  ));
                            }
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
                            if (_visible == true) {
                              setState(() {
                                _visible = false;
                              });
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingPage(
                                            title: 'setting',
                                          )));
                            }
                          },
                        ),
                      ]),
                ],
              ),
              onTap: () {
                if (_visible == true) {
                  setState(() {
                    _visible = false;
                  });
                }
              }),
          Visibility(
              visible: _visible,
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(164, 100, 184, 100)),
                height: 250,
                width: 200,
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(208, 178, 238, 181),
                        hintText: '球場',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(208, 178, 238, 181),
                        hintText: '道數',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(208, 178, 238, 181),
                        hintText: '日期',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
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
                      setState(() {
                        _visible = false;
                      });
                    },
                    label: Text(
                      '確定',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ]),
              ))
        ])));
  }
}
