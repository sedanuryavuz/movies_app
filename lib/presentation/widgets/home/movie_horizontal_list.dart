import 'package:flutter/material.dart';
import 'movie_card.dart';

class MovieHorizontalList extends StatelessWidget {
  final List<Map<String, String>> movies;

  const MovieHorizontalList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemBuilder: (context, i) {
          final m = movies[i];
          return MovieCard(
            posterUrl: m["posterUrl"]!,
            title: m["title"]!,
            year: m["year"]!,
            actors: m["actors"]!,
            rating: m["rating"]!,
          );
        },
      ),
    );
  }
}
