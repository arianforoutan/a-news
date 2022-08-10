import 'package:flutter/material.dart';

import 'package:sciencenewsinshort/HomeScreen.dart';
import 'package:sciencenewsinshort/model/news.dart';

class SciencePage extends StatefulWidget {
  SciencePage({Key? key, this.news}) : super(key: key);
  List<News>? news;
  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  List<News>? news;
  @override
  void initState() {
    super.initState();
    news = widget.news;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('a!news'),
        centerTitle: true,
      ),
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: news!.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red,
                          Colors.amber,
                        ],
                      ),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 300,
                              child: Image(
                                image: NetworkImage(news![index].imageUrl),
                              ),
                            ),
                          ),
                          Text(
                            news![index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 109, 9, 34),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text('Author : '),
                              Text(news![index].author),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            news![index].content,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              news![index].date,
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
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
