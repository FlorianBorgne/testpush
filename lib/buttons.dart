import 'package:flutter/material.dart';
import 'side_bar.dart';

class ButtonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned(
          bottom: 180,
          right: 470,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('A'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(5.0),
            ),
          ),
        ),
        Positioned(
          bottom: 180,
          right: 518,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('B'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(5.0),
            ),
          ),
        ),
        Positioned(
          bottom: 225,
          right: 560,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('C'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(5.0),
            ),
          ),
        ),
        Positioned(
          bottom: 225,
          right: 518,
          width: 15.0,
          height: 15.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('D'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 263,
          right: 500,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('E'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 285,
          right: 470,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('F'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 310,
          right: 450,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('G'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 335,
          right: 460,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('H'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 520,
          right: 565,
          width: 20.0,
          height: 20.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('J'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        Positioned(
          bottom: 200,
          right: 390,
          width: 15.0,
          height: 15.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('I'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
      ],
    ));
  }
}
