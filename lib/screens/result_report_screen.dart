import 'package:dicee/infrastructure/main_app.dart';
import 'package:flutter/material.dart';

class ResultReportScreen extends StatelessWidget {
  const ResultReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var oneCount =
        MainApp.dice1.where((element) => element == 1).toList().length +
            MainApp.dice2.where((element) => element == 1).toList().length;
    var twoCount =
        MainApp.dice1.where((element) => element == 2).toList().length +
            MainApp.dice2.where((element) => element == 2).toList().length;
    ;
    var threeCount =
        MainApp.dice1.where((element) => element == 3).toList().length +
            MainApp.dice2.where((element) => element == 3).toList().length;
    ;
    var fourCount =
        MainApp.dice1.where((element) => element == 4).toList().length +
            MainApp.dice2.where((element) => element == 4).toList().length;
    ;
    var fiveCount =
        MainApp.dice1.where((element) => element == 5).toList().length +
            MainApp.dice2.where((element) => element == 5).toList().length;
    ;
    var sixConunt =
        MainApp.dice1.where((element) => element == 6).toList().length +
            MainApp.dice2.where((element) => element == 6).toList().length;
    ;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Text('1 comes : $oneCount'),
          ),
          Container(
            child: Text('2 comes : $twoCount'),
          ),
          Container(
            child: Text('3 comes : $threeCount'),
          ),
          Container(
            child: Text('4 comes : $fourCount'),
          ),
          Container(
            child: Text('5 comes : $fiveCount'),
          ),
          Container(
            child: Text('6 comes : $sixConunt'),
          )
        ],
      ),
    );
  }
}
