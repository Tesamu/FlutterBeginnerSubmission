import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String data;

  Detail(this.data);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'Detail',
          style: new TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index +=1;
          });
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'Halaman ${widget.data} $index',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}