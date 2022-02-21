import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List colornames = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.black,
    Colors.yellow,
    Colors.white,
  ];
  void ChangeColor() {
    setState(() {
      index = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backgroundcolorchanger',
      home: Scaffold(
        backgroundColor: colornames[index],
        appBar: AppBar(
          title: Text('Backgroundcolorchanger'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
              height: 50,
              width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: ChangeColor,
                child: Text('change it!'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
