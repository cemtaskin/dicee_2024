import 'package:dicee/screens/dice_page_screen.dart';
import 'package:dicee/screens/result_report_screen.dart';
import 'package:dicee/screens/show_result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => DicePageScreen(),
        '/showResult': (context) => ShowResultScreen(),
        '/resultReport': (context) => ResultReportScreen()
      },
    );
  }
}
