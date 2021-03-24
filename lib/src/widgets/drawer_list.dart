import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF1F1F1F),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/menu-img.jpg'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
                leading: Icon(Icons.pages, color: Colors.white),
                title: Text(
                  'Pages',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {}),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.party_mode, color: Colors.white),
              title: Text('Party Mode', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.white),
              title: Text('People', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
