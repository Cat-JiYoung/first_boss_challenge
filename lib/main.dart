import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: Center(child: Text('Monster University'))),
          body: MonsterPage(),
        ),
      ),
  );
}

class MonsterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Monter();
  }
}

class Monter extends StatefulWidget {
  @override
  _MonterState createState() => _MonterState();
}

class _MonterState extends State<Monter> {
  int monNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/monsters$monNumber.png', width: 300, height: 200),
          SizedBox(
            height: 100.0,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: TextButton(
              onPressed: () {
                setState(() {
                  monNumber = Random().nextInt(7)+1;
                });

              },
              child: Text('Choose A Monster'),
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.green[900],
                  shape: StadiumBorder(),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}


