import 'package:flutter/material.dart';

import '../widgets/home/banner_slider.dart';
import '../widgets/home/movie_horizontal_list.dart';
import '../widgets/home/search_bar_widget.dart';
import '../widgets/home/section_header.dart';
import 'movie_details_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SearchBarWidget()),

        SliverToBoxAdapter(
          child: Column(
            children: const [
              SizedBox(height: 20),
              BannerSlider(),
              SizedBox(height: 20),
            ],
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SectionHeader(
              title: "Trending Movies",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => MovieDetailPage(),
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: MovieHorizontalList(movies: demoTrendingMovies),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SectionHeader(title: "Top Rated Movies", onTap: () {
            }),
          ),
        ),
        SliverToBoxAdapter(
          child: MovieHorizontalList(movies: demoTopRatedMovies),
        ),
      ],
    );
  }
}

// TODO : Burası silinecek. Api ile veri gelecek.
final demoTrendingMovies = [
  {
    "posterUrl":
    "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Oppenheimer",
    "year": "2023",
    "actors": "Cillian Murphy",
    "rating": "8.9",
  },
  {
    "posterUrl":
    "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Barbie",
    "year": "2023",
    "actors": "Margot Robbie",
    "rating": "7.5",
  },
];

final demoTopRatedMovies = [
  {
    "posterUrl":
    "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Inception",
    "year": "2010",
    "actors": "Leonardo DiCaprio",
    "rating": "8.8",
  },
  {
    "posterUrl":
    "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "The Dark Knight",
    "year": "2008",
    "actors": "Christian Bale",
    "rating": "9.0",
  },
];
