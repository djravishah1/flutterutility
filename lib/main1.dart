import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Utils App")), body: new MyBody());
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "Dialog is up..",
      style: new TextStyle(fontSize: 30),
    ),
    title: new Text("Hello"),
  );
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new RaisedButton(
          child: new Text(
            "Click Me",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.greenAccent,
          //  onPressed: () => Scaffold.of(context).showSnackBar(
          //    new SnackBar(content: new Text("You Clicked me"),
          //    duration: new Duration(seconds: 3),
          //    )),
          onPressed: () => showDialog(context: context, child: dialog),
        ),
      ),
    );
  }
}
