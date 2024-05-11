import 'dart:math';

import 'package:dicee/infrastructure/main_app.dart';
import 'package:flutter/material.dart';

class DicePageScreen extends StatefulWidget {
  const DicePageScreen({super.key});

  @override
  State<DicePageScreen> createState() => _DicePageScreenState();
}

class _DicePageScreenState extends State<DicePageScreen> {
  var first = 0, second = 0;

  @override
  void initState() {
    super.initState();
    dice();
  }

  void dice() {
    first = new Random().nextInt(6) + 1;
    second = new Random().nextInt(6) + 1;
    MainApp.dice1.add(first);
    MainApp.dice2.add(second);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            dice();
          },
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset('images/dice$first.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Image.asset('images/dice$second.png'),
                  )
                ],
              ),
              Text(
                'Round : ${MainApp.dice1.length}',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            MainApp.dice1.clear();
                            MainApp.dice2.clear();
                          });
                        },
                        child: Text(
                          'Clear Results',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/showResult');
                        },
                        child: Text(
                          'Show Results',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/resultReport');
                        },
                        child: Text(
                          'Show Graphic',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



/*

*/