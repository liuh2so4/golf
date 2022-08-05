import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Color.fromARGB(197, 230, 252, 216),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
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
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 175,
                      width: 120,
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
                width: 150,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(97, 34, 186, 55),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 175,
                      width: 120,
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
                width: 150,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(99, 55, 205, 78),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
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
}
