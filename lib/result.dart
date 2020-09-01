import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int totalscore;

  Result(this.reset, this.totalscore);

  String get text {
    if (totalscore < 16) {
      return 'hero';
    } else if (totalscore == 16) {
      return 'great';
    } else {
      return 'your awesome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(50),
          ),
          Text(
            'WoW boy you finished that\'s great',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.all(20),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            margin: EdgeInsets.all(20),
          ),
          Text('Your Score is',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.all(20),
          ),
          Container(
            alignment: Alignment.center,
            child: Card(
              color: Colors.green,
              child: Text(
                '$totalscore',
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
          ),
          RaisedButton(
            color: Colors.amber,
            child: Icon(Icons.refresh),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
