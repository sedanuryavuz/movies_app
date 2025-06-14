import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favori Filmlerim")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
              const SizedBox(height: 12),
              buildMovieCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMovieCard() {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.movie, size: 40, color: Colors.grey),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 16,
                    width: 150,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ...List.generate(5, (_) => Icon(Icons.star, size: 16, color: Colors.grey[400])),
                      const SizedBox(width: 4),
                      Container(
                        width: 30,
                        height: 12,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 40,
                        height: 12,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 12,
                    width: 200,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 30,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
