import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.lightBlueAccent[100],
  brightness: Brightness.light,
  primaryColor: Colors.teal[200],
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.grey[850],
  brightness: Brightness.dark,
  primaryColor: Colors.indigo[900],
);

bool _light = false;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Movies App',
      darkTheme: _darkTheme,
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
                title: Text("Light Theme"),
                trailing: Switch(
                    value: _light,
                    onChanged: (state) {
                      setState(() {
                        _light = state;
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
