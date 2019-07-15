import 'package:flutter/material.dart';

class OtherLists extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new OtherListsState();
}

class OtherListsState extends State<OtherLists> {
  final List<ListItem> items = List<ListItem>.generate(
      100,
      (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem("Sender $i", "Message body $i"),
  );

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem){
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
        },
      ),
    );
  }
}

// The base class for the different types of items the list can contain.
abstract class ListItem {}

// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  HeadingItem(this.heading);

  final String heading;
}

// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  MessageItem(this.sender, this.body);

  final String body;
  final String sender;
}