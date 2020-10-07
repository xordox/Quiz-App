import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Your score: $resultScore out of 10",
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
