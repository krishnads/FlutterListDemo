import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final List listTypes;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('This is Basic List'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text('Horizontal list'),
          ),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('Grid list'),
          ),
          ListTile(
            leading: Icon(Icons.devices_other),
            title: Text('list with different types of items'),
          ),
        ],
      ),
    );
  }
}

// Create a horizontal list
// Creating a Grid List
// Creating lists with different types of items