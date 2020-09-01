import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String questiontext;

  question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(40),
      color: Colors.white30,
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
