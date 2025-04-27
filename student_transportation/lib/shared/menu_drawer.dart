import 'package:flutter/material.dart';
import 'package:student_transportation/screens/intro_screen.dart';
import 'package:student_transportation/screens/login_screen.dart';
import 'package:student_transportation/screens/map_screen.dart';
import 'package:student_transportation/screens/registerPage_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: buildMenuItems(context)));
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = ['Home', 'Login Page', 'Register', 'Map'];
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
    menuTitles.forEach((element) {
      Widget screen = Container();
      menuItems.add(
        ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home Page':
                screen = IntroScreen();
                break;
              case 'Login Page':
                screen = LoginPage();
                break;
              case 'Register':
                screen = RegisterPage();
                break;
              case 'Map':
                screen = MapScreen();
                break;
              default:
                screen = IntroScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => screen));
          },
        ),
      );
    });
    return menuItems;
  }
}
