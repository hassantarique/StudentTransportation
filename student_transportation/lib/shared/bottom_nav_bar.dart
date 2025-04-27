import 'package:flutter/material.dart';
import 'package:student_transportation/screens/intro_screen.dart';
import 'package:student_transportation/screens/map_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex; // Tracks the current selected tab
  final Function(int) onItemTapped; // Callback function when an item is tapped

  BottomNavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex, // Set current selected index
      onTap: (index) {
        onItemTapped(index);

        switch (index) {
          case 0:
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => IntroScreen(),
            ));
            break;
          case 1:
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => MapScreen(),
            ));
            break;
          default:
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => IntroScreen(),
            ));
            break;
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home', // Label for Home page
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map', // Label for Map page
        ),
      ],
    );
  }
}
