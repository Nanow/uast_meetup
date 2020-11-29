import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MeetUp',
      home: MyHomePage(title: 'Eliaquim e top'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
            'https://go.hurb.com/wp-content/uploads/2017/02/Koh-Tao-Tail%C3%A2ndia.jpg',
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
