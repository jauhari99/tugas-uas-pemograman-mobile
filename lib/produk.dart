import 'package:flutter/material.dart';
import 'package:login_google/drawer/bottom.dart';
import 'package:login_google/beranda.dart';
import 'package:login_google/menu.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          drawer: const DrawerWidget(),
          bottomNavigationBar: const BottomAppBar(),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  "shoes2.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  "shoes3.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  "shoes4.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  "shoes5.png",
                ),
              ),
            ],
          ),
        ));
  }
}
