import 'package:first_flutter/constants/route.constants.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  final profileImageUrl =
      'https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?semt=ais_hybrid&w=740';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Color.fromARGB(255, 1, 81, 122)),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color.fromARGB(255, 1, 81, 122)),
              accountName: Text(
                'Deepakpal875000',
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                'deepak@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(profileImageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.settings);
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.help);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Add your logout logic here
              Navigator.pushNamed(context, MyRoutes.login);
            },
          ),
        ],
      ),
    );
  }
}
