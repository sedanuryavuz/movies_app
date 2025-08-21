import 'package:flutter/material.dart';

import '../widgets/banner_slider.dart';
import '../widgets/movie_horizontal_list.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
              child: SectionHeader(title: "Trending Movies", onTap: () {}),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieHorizontalList(movies: demoTrendingMovies),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: SectionHeader(title: "Top Rated Movies", onTap: () {}),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieHorizontalList(movies: demoTopRatedMovies),
          ),
        ],
      ),
    );
  }
}

// TODO : Burası silinecek. Api ile veri gelecek.
final demoTrendingMovies = [
  {
    "posterUrl": "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Oppenheimer",
    "year": "2023",
    "actors": "Cillian Murphy",
    "rating": "8.9",
  },
  {
    "posterUrl": "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Barbie",
    "year": "2023",
    "actors": "Margot Robbie",
    "rating": "7.5",
  },
];

final demoTopRatedMovies = [
  {
    "posterUrl": "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "Inception",
    "year": "2010",
    "actors": "Leonardo DiCaprio",
    "rating": "8.8",
  },
  {
    "posterUrl": "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
    "title": "The Dark Knight",
    "year": "2008",
    "actors": "Christian Bale",
    "rating": "9.0",
  },
];
