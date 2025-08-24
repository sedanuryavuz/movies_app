import 'package:flutter/material.dart';
import 'package:movies_app/presentation/screens/home_page_screen.dart';
import 'package:movies_app/presentation/screens/login_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePageScreen(),
    const HomePageScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0
          ? AppBar(
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Movie', style: TextStyle(color: Colors.white)),
              TextSpan(text: 'Lab', style: TextStyle(color: Colors.red)),
            ],
          ),
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      )
          : null,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorities'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}


