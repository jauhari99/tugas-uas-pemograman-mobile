import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_google/drawer/bottom.dart';
import 'package:login_google/menu.dart';
import 'package:login_google/produk.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int currentTab = 0;
  final List<Widget> screens = [
    Menu(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snekers Shop"),
        backgroundColor: Colors.black,
      ),
      drawer: const DrawerWidget(),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Menu();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.black : Colors.black,
                        ),
                        Text(
                          'Beranda',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.black
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Kategori();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 1 ? Colors.black : Colors.black,
                      ),
                      Text(
                        'Produk',
                        style: TextStyle(
                            color:
                                currentTab == 1 ? Colors.black : Colors.black),
                      )
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
