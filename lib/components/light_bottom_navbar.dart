import 'package:flutter/material.dart';

class LightBottomNavBar extends StatefulWidget {
  const LightBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _LightBottomNavBarState createState() => _LightBottomNavBarState();
}

class _LightBottomNavBarState extends State<LightBottomNavBar> {
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
                  color: Colors.black,
                )),
                gradient: LinearGradient(
                  colors: [
                    Colors.teal[200].withOpacity(0.3),
                    Colors.teal[200].withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
                // color: index == _selectedItem ? Colors.blueGrey : Colors.transparent,
                )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItem ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
