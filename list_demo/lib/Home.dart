import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  @override 
  State<StatefulWidget> createState() => new HomeState();
  
}

class HomeState extends State<Home> {

  final List<String> listTypes = ['Basic list', 'Horizontal list', 'Grid list', 'List with different types of items'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Basic List With Tap Action'),
      ),
      body: ListView.builder(
        itemCount: listTypes.length,
        itemBuilder: (context, index) {
          return ListTile(
             leading: Icon(Icons.view_list),
             title: Text(listTypes[index]),
             onTap: () {
               navigateTo(index);
             },
          );
        },
      ),
    );
  }

  void navigateTo(index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/basic_list');
        break;
      case 1:
        Navigator.pushNamed(context, '/horizontal_list');
        break;
      case 2:
        Navigator.pushNamed(context, '/grid_list');
        break;
      case 3:
        Navigator.pushNamed(context, '/other_list');
        break;
      default:
    }
  }
}
