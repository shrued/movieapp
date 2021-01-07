import 'package:flutter/material.dart';
import 'package:movie_app/components/dark_bottom_navbar.dart';
import 'package:movie_app/components/light_bottom_navbar.dart';

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
      debugShowCheckedModeBanner: false,
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Movies App',
      darkTheme: _darkTheme,
      home: Scaffold(
        bottomNavigationBar: _light ? LightBottomNavBar() : DarkBottomNavBar(),
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
