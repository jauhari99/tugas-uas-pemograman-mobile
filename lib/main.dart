import 'package:flutter/material.dart';
import 'beranda.dart';
import 'dart:async';
import 'dart:convert' show json;
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Page",
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Image(image: AssetImage('assets/banner.jpg')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 15, bottom: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pasword',
                    hintText: 'Pasword'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password ? Create account?',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Beranda()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
