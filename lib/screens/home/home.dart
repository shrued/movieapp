import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/components/genres.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Genres(),
      ],
    );
  }
}
