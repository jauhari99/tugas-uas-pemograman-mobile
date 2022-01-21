import 'package:flutter/material.dart';

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('foto.png'),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 350,
              child: Text(
                'Muh.iqbal jauhari_1119101695',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 350,
              child: Text(
                'Nila wulandari_1119101809',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 350,
              child: Text(
                'Erwin david priyangga_119101796',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 350,
              child: Text(
                'TUGAS UAS PEMOGRAMAN BERBASIS MOBILE',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
