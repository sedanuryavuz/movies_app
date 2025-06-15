import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  'https://picsum.photos/seed/904/600',
                  fit: BoxFit.cover,
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Shang-Chi",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "and The Legend Of The Teeen Rings",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 12),

                    Wrap(
                      spacing: 8,
                      children: const [
                        Chip(label: Text("Action")),
                        Chip(label: Text("Adventure")),
                        Chip(label: Text("Fantasy")),
                      ],
                    ),
                    const SizedBox(height: 16),

                    const Text(
                      "Shang-Chi, the master of weaponry-based Kung Fu is forced to confront his past after being drawn into the Ten Rings organization.",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 16),

                    _buildLabelValue("Director", "Destin Daniel Cretton"),
                    _buildLabelValue("Writers", "Dave Callaham (screenplay), Destin Daniel Cretton (screenplay), Andrew Lanham (screenplay)"),
                    _buildLabelValue("Stars", "Simu Liu, Awkwafina, Tony Chiu-Wai Leung"),

                    const SizedBox(height: 16),
                    const Text("Photos", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildPhoto('https://picsum.photos/seed/904/600'),
                          _buildPhoto('https://picsum.photos/seed/904/600'),
                          _buildPhoto('https://picsum.photos/seed/904/600'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildLabelValue(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "$label\n", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            TextSpan(text: value, style: const TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  static Widget _buildPhoto(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
