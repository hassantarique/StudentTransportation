import 'package:flutter/material.dart';
import 'package:student_transportation/screens/intro_screen.dart';
import 'package:student_transportation/screens/login_screen.dart';
import 'package:student_transportation/screens/map_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: buildMenuItems(context)));
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = ['Home', 'Map'];
    List<Widget> menuItems = [];
    menuItems.add(
      DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text(
          'Student Transportation',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );

    for (var title in menuTitles) {
      Widget screen;
      switch (title) {
        case 'Home':
          screen = const IntroScreen();
          break;
        case 'Map':
          screen = const MapScreen();
          break;
        default:
          screen = const LoginPage();
      }

      menuItems.add(
        ListTile(
          title: Text(title, style: TextStyle(fontSize: 18)),
          onTap: () {
            Navigator.of(context).pop(); // Close the drawer
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => screen),
              (route) => route.isFirst || title == 'Home',
            );
          },
        ),
      );
    }

    return menuItems;
  }
}
