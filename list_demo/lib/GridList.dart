import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new GridListState();
}

class GridListState extends State<GridList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(50, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}