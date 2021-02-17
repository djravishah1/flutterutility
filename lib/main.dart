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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Utils App"),
          bottom: new TabBar(
            //for TAB Bar
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.email ),
              )
            ],
            ),
            ),
        body: new TabBarView(
          children: <Widget>[new NewPage("First"), new NewPage("Second")],
          controller: tabController,
        ),
        //for BottomTab
        bottomNavigationBar: new Material(
          color: Colors.teal,
          child: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.email ),
              )
            ],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.add),
            backgroundColor: Colors.orangeAccent,
            onPressed: ()=> print("FAB is pressed")),
        );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(child: new Text(title)),
    );
  }
}
