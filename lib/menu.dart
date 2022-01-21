import 'package:flutter/material.dart';
import 'package:login_google/drawer/bottom.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Wellcome to Sneakers Shop',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              letterSpacing: 3.5,
                              wordSpacing: 5,
                              height: 3)),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "shoes1.jpg",
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 4.0),
                  margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 4.0),
                  height: 350,
                  width: double.infinity,
                  child: Card(
                    child: Container(
                      color: Colors.grey.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(),
                              child: Text('Snekers Shop',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      letterSpacing: 2,
                                      wordSpacing: 5,
                                      height: 2))),
                          Padding(
                              padding: EdgeInsets.only(),
                              child: Text(
                                  'Snekers shop merupakan suatu online shop yang membantu setiap orang yang ingin membeli sepatu, di toko kami juga merekomendasikan beberapa pilihan sepatu yang pastinya original dan juga berkualitas baik',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      wordSpacing: 2,
                                      height: 2))),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "shoes2.png",
                ),
              ),
            ],
          ),
        ));
  }
}
