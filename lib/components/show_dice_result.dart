import 'package:flutter/material.dart';

class ShowDiceResult extends StatelessWidget {
  final int? first;
  final int? second;

  const ShowDiceResult({super.key, this.first, this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(12.0),
        child: Row(children: [
          Expanded(
            child: Image.asset(
              'images/dice$first.png',
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Image.asset(
              'images/dice$second.png',
            ),
          )
        ]));
  }
}
