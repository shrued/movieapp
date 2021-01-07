import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Discover"),
        ),
        body: Center(
          child: Container(
            child: Text("Movies"),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Dark Theme"),
                trailing: Switch(value: false, onChanged: (changedTheme) {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
