import 'package:flutter/material.dart';
import 'Home.dart';
import 'BasicList.dart';
import 'GridList.dart';
import 'HorizontalList.dart';
import 'OtherLists.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/basic_list': (context) => BasicList(),
        '/horizontal_list': (context) => HorizontalList(),
        '/grid_list': (context) => GridList(),
        '/other_list': (context) => OtherLists(),
      },
      
    );
  }
}