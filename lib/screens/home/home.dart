import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/components/genres.dart';
import 'package:movie_app/screens/home/components/movie_cards.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Genres(),
          GenreText(
            genre: "Crime",
          ),
          Crime(),
          GenreText(
            genre: "Psychological Thriller",
          ),
          PsychologicalThriller(),
          GenreText(
            genre: "Romance",
          ),
          Romance(),
          GenreText(
            genre: "Science Fiction",
          ),
          SciFi(),
        ],
      ),
    ));
  }
}
