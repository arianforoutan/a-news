import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:sciencenewsinshort/sports.dart';

import 'model/news.dart';

class SpSplash extends StatefulWidget {
  SpSplash({Key? key}) : super(key: key);

  @override
  State<SpSplash> createState() => _SpSplashState();
}

class _SpSplashState extends State<SpSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.amber,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SpinKitFadingCircle(
              color: Color.fromARGB(255, 44, 44, 44),
              size: 65,
            ),
          ),
        ),
      ),
    );
  }

  void getData() async {
    var response =
        await Dio().get('https://inshorts.deta.dev/news?category=sport');

    List<News> newslist = response.data['data']
        .map<News>((jsonMapObject) => News.fromMapJson(jsonMapObject))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SportsPage(
          news: newslist,
        ),
      ),
    );
  }
}
