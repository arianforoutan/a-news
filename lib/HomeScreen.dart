import 'package:flutter/material.dart';

import 'package:sciencenewsinshort/ausplash.dart';

import 'package:sciencenewsinshort/scsplash.dart';

import 'package:sciencenewsinshort/spsplash.dart';

import 'package:sciencenewsinshort/tesplash.dart';

import 'model/news.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<News>? newslist;

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 64,
                  width: 64,
                  child: Image.asset('images/news.png'),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 44, 44, 44),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Please Choo se Category',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: Image.asset(
                                'images/pngfind.com-science-png-496614.png'),
                          ),
                          SizedBox(
                            height: 60,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: ((context) {
                                      return ScSplash();
                                    }),
                                  ),
                                );
                              },
                              child: Text(
                                'science',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 44, 44, 44),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: Image.asset(
                                'images/pngfind.com-sport-car-png-2473990.png'),
                          ),
                          SizedBox(
                            height: 60,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: ((context) {
                                      return AuSplash();
                                    }),
                                  ),
                                );
                              },
                              child: Text(
                                'automobile',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 44, 44, 44),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: Image.asset(
                                'images/pngfind.com-technology-clipart-png-5751987.png'),
                          ),
                          SizedBox(
                            height: 60,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        TeSplash(),
                                  ),
                                );
                              },
                              child: Text(
                                'technology',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 44, 44, 44),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: Image.asset(
                                'images/pngfind.com-sports-png-472780.png'),
                          ),
                          SizedBox(
                            height: 60,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SpSplash(),
                                  ),
                                );
                              },
                              child: Text(
                                'sports',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 44, 44, 44),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              'a!news',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
