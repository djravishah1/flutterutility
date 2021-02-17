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
  int current_step = 0;
  List<Step> my_steps = [
              new Step(
                title: new Text("Step 1"),
                content: new Text("Some Content 1"),
                isActive: true
              ),
              new Step(
                title: new Text("Step 2"),
                content: new Text("Some Content 2"),
                isActive: true
              ),
              new Step(
                title: new Text("Step 3"),
                content: new Text("Some Content 3"),
                isActive: true
              ), 
            ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Utils App")), 
        body: new Container(
          child: new Stepper(steps: my_steps,
          currentStep: this.current_step,
          type: StepperType.vertical,
          
          ),
        ));
  }
}

