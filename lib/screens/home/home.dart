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
  int _currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("My List"),
    Text("Account"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Movies App',
      darkTheme: _darkTheme,
      home: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        appBar: AppBar(
          elevation: 0,
          title: Text("Discover"),
        ),
        body: Center(
          child: Container(
            child: _widgetOptions[_currentIndex],
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

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildNavBarItem(Icons.home, 0),
        buildNavBarItem(Icons.playlist_play, 1),
        buildNavBarItem(Icons.person, 2),
      ],
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 60,
        width: MediaQuery.of(context).size.width / 3,
        decoration: index == _selectedItem
            ? BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: 3,
                  color: _light ? Colors.black : Colors.white,
                )),
                gradient: _light
                    ? LinearGradient(
                        colors: [
                          Colors.teal[200].withOpacity(0.3),
                          Colors.teal[200].withOpacity(0.015),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )
                    : LinearGradient(
                        colors: [
                          Colors.indigo[900].withOpacity(0.3),
                          Colors.indigo[900].withOpacity(0.015),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ))
            : BoxDecoration(),
        child: _light
            ? Icon(
                icon,
                color: index == _selectedItem ? Colors.black : Colors.grey,
              )
            : Icon(
                icon,
                color: index == _selectedItem ? Colors.white : Colors.grey,
              ),
      ),
    );
  }
}
