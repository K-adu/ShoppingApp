import 'package:e_commerce/screens/blog.dart';
import 'package:e_commerce/screens/homepage.dart';
import 'package:e_commerce/screens/maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: HomePage()),
    Center(child: MapApp()),
    Center(child: Blog()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[400],
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_sharp),
            label: 'map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Blogs',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
