import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/components/genre_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Psychological Thriller",
      "Thriller"
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(
                genre: genres[index],
              )),
    );
  }
}
