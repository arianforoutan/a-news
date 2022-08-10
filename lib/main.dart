import 'package:flutter/material.dart';
import 'package:sciencenewsinshort/HomeScreen.dart';
import 'package:sciencenewsinshort/science.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'mh'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
