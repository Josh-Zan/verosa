import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10,),
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              'Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            Divider(color: Colors.black54,),
            MenuItem(
              text: 'Language',
              icon: Icons.language_outlined,
            ),
            MenuItem(
              text: 'Country',
              icon: Icons.flag,
            ),
          ],
        ),
      ),
    );
  }
}

Widget MenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Colors.black;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
      size: 30,
    ),
    title: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 18,
      ),
    ),
    hoverColor: Colors.white70,
    onTap: () {},
  );
}
