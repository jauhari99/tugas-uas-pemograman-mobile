import 'package:flutter/material.dart';
import 'package:login_google/beranda.dart';
import 'package:login_google/profile.dart';
import 'package:login_google/profile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home,
              text: 'Beranda',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Beranda()),
                );
              }),
          _drawerItem(
              icon: Icons.person,
              text: 'Profil',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profil()),
                );
              }),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Lainnya",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return const UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      color: Colors.black,
    ),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/logo.png'), fit: BoxFit.cover),
    ),
    accountName: Text('Wellcome to Snekers shop'),
    accountEmail: Text('Snekersshop@gmail.com'),
  );
}

Widget _drawerItem(
    {IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
