import 'package:flutter/material.dart';

class ScoreCardPage extends StatelessWidget {
  const ScoreCardPage(
      {Key? key,
      required this.title,
      required this.course,
      required this.holes,
      required this.date})
      : super(key: key);

  final String title;
  final String course;
  final int holes;
  final String date;

  List<Widget> _buildCells(int count, Color color, double width) {
    return List.generate(
      count,
      (index) => Container(
        alignment: Alignment.center,
        width: width,
        height: 60.0,
        margin: EdgeInsets.all(4.0),
        color: color,
        child: Text(
          "${index + 1}",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  List<Widget> _buildRows(int count) {
    return List.generate(
      count,
      (index) => Row(
        children: _buildCells(holes + 1, Color.fromARGB(199, 85, 218, 77), 60),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          automaticallyImplyLeading: false,
          actions: <Widget>[
          IconButton(
            iconSize: 35,
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home_filled),
            tooltip: 'home page',
          )
        ],
        ),
        body: Column(children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            course + ' $holes道' + ' $date',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      _buildCells(5, Color.fromARGB(255, 63, 130, 52), 120),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildRows(5),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 200, right: 50),
            width: 200,
            alignment: Alignment.center,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 197, 232, 0)),
            child: Text(
              '結算成績',
              style: TextStyle(
                  color: Color.fromARGB(255, 254, 254, 254), fontSize: 30),
            ),
          )
        ]));
  }
}
