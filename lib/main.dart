import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_test/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TabController controller;                             undefined ??????
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:'HyeonFlix',
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      // accentColor: Colors.white                        deprecated -> ??????
    ),
    home: DefaultTabController(
        length:4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                child: Center(child: Text('home')),
              ),
              Container(
                child: Text('search'),
              ),
              Container(
                child: Text('save'),
              ),
              Container(
                child: Text('more'),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ))
    );
  }
}
