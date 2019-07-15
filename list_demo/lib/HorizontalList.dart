import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new HorizontalListState();
}

class HorizontalListState extends State<HorizontalList> {

  final List<String> listTypes = ['1 list', '2 list', '3 list', ' 4 List'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Horizontal List'),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      // body: ListView.builder(
      //   //scrollDirection: Axis.horizontal,
      //   itemCount: listTypes.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: Icon(Icons.view_list),
      //       title: Text(listTypes[index]),
      //       onTap: () {
      //         //navigateTo(index);
      //       },
      //     );
      //   },
      // ),
    );
  }
}