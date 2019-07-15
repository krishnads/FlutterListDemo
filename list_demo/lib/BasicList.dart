import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Basic List'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text('1 list'),
          ),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('2 list'),
          ),
          ListTile(
            leading: Icon(Icons.devices_other),
            title: Text('3 List'),
          ),
        ],
      ),
    );
  }
}