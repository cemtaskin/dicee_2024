import 'package:dicee/components/show_dice_result.dart';
import 'package:dicee/infrastructure/main_app.dart';
import 'package:flutter/material.dart';

class ShowResultScreen extends StatefulWidget {
  const ShowResultScreen({super.key});

  @override
  State<ShowResultScreen> createState() => _ShowResultScreenState();
}

class _ShowResultScreenState extends State<ShowResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body: ListView.builder(
        itemCount: MainApp.dice1.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
            child: ShowDiceResult(
              first: MainApp.dice1[index],
              second: MainApp.dice2[index],
            ),
          );
        },
      ),
    );
  }
}
