import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hello world'),
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
  bool onPressed = true;
  String text = "Hello world!";

  void changeText() {
    if (onPressed) {
      setState(() {
        text = "Hello!";
        onPressed = false;
      });
    } else {
      setState(() {
        text = "Hello world!";
        onPressed = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Positioning

          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 25.0),
            ),
            FlatButton(
                color: Colors.blue,
                onPressed: changeText,

                child: Text("Change", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}