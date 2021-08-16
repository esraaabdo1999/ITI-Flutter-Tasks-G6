import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  int counterFromMain ;
  PageTwo({this.counterFromMain=0});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _counter;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Text(
              '${widget.counterFromMain}',
              style: Theme.of(context).textTheme.headline4,
            ),
        ],
        ),
      ),
    );
  }
}