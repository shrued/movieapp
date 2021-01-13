import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key key, this.genre}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[400],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        genre,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
