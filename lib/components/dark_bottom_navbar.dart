import 'package:flutter/material.dart';

class DarkBottomNavBar extends StatefulWidget {
  const DarkBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _DarkBottomNavBarState createState() => _DarkBottomNavBarState();
}

class _DarkBottomNavBarState extends State<DarkBottomNavBar> {
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
                  color: Colors.white,
                )),
                gradient: LinearGradient(
                  colors: [
                    Colors.indigo[900].withOpacity(0.3),
                    Colors.indigo[900].withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
                // color: index == _selectedItem ? Colors.blueGrey : Colors.transparent,
                )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItem ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
