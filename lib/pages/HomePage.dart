import 'package:flutter/material.dart';
import 'posts/post_1.dart';
import 'posts/post_2.dart';
import 'posts/post_3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey, // Couleur des icônes non sélectionnées (gris)
        selectedItemColor: Colors.white, // Couleur des icônes sélectionnées (blanc)
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
            _controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
