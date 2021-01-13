import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app_pemula/detailPage.dart';

class Home extends StatelessWidget {
  final List<String> listOf = [
    "Alpha",
    "Bravo",
    "Charlie",
    "Delta",
    "Echo",
    "Foxtrot",
    "Golf",
    "Hotel",
    "India",
    "Juliet",
    "Kilo",
    "Lima",
    "Mike",
    "November",
    "Oscar",
    "Papa",
    "Quebec",
    "Romeo",
    "Sierra",
    "Tango",
    "Uniform",
    "Victor",
    "Whiskey",
    "X-ray",
    "Yankee",
    "Zulu"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'NATO Alphabet',
          style: new TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: add),
          new IconButton(icon: new Icon(Icons.search), onPressed: search)
        ],
      ),
      body: ListView.builder(
        itemCount: this.listOf.length,
        itemBuilder: (_, int index) {
          return Card(
            elevation: 0.0,
            child: ListTile(
              title: ListDataItem(this.listOf[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail(listOf[index])));
              },
            ),
          );
        },
      ),
    );
  }

  void add() {
    Fluttertoast.showToast(msg: "Add");
  }

  void search() {
    Fluttertoast.showToast(msg: "Search");
  }
}

class ListDataItem extends StatelessWidget {
  String itemName;

  ListDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 7.0,
      child: new Container(
        child: new Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: new CircleAvatar(
                child: new Text(itemName[0]),
              ),
            ),
            new Text(
              itemName,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
