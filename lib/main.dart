import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('workshop'),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text('login'),
              ),
              Tab(
                child: Text('signup'),
              )
            ],
          ),
        ),
        body: TabBarView(controller: _tabController, children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              customWidget('login email'),
              customWidget('login password'),
              RaisedButton(onPressed: () {}, child: Text('login'))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              customWidget('signup email'),
              customWidget('signup password'),
              RaisedButton(onPressed: () {}, child: Text('signup'))
            ],
          ),
        ]),
      ),
    );
  }

  Widget customWidget(String label) {
    return TextField(
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        disabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
