import 'package:flutter/material.dart';
import 'body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const primayColor = Color(0xFF002F57);
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            //color: #002F57
            title: Text(
              'Pôle Citadelle',
              style: TextStyle(fontSize: 35),
            ),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: LimitedBox(
                  maxWidth: 60,
                  maxHeight: 60,
                  child: ImageIcon(AssetImage('assets/images/logo_upjv.png'))),
            ),
            toolbarHeight: 60,
            backgroundColor: primayColor,
            centerTitle: true,
          ),
          body: Body()),
    );
  }
}
