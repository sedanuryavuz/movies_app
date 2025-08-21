import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String posterUrl;
  final String title;
  final String year;
  final String actors;
  final String rating;

  const MovieCard({
    super.key,
    required this.posterUrl,
    required this.title,
    required this.year,
    required this.actors,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  posterUrl,
                  width: 120,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(rating, style: const TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: 120,
            child: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ),
          Text(year, style: const TextStyle(color: Colors.grey)),
          SizedBox(
            width: 120,
            child: Text(actors,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
