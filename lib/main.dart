import 'package:flutter/material.dart';
import 'package:movies_app/presentation/pages/favorites_page.dart';
import 'package:movies_app/presentation/pages/home_page.dart';
import 'package:movies_app/presentation/pages/movie_detail_page.dart';
import 'core/constants/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MovieDetailPage(),
    );
  }
}
