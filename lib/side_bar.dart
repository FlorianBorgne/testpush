import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  var titre = 'Bâtiment';
  String image = 'assets/images/batiments/PavillonH.jpg';
  var description = 'description';
  var details = 'details';

  changeText() {
    setState(() {
      titre = 'Bâtiment A';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: SizedBox(
              child: Image(image: AssetImage(image)),
              width: 250.0,
              height: 170.0),
        ),
        Row(
          children: [
            Text(titre),
            //here add the cercle of the building
          ],
        ),
        Text(description),
      ],
    );
  }
}


/*
class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String textHolder = 'Bâtiment alpha';

  changeText() {
    setState(() {
      textHolder = 'batiment A';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text('$textHolder', style: TextStyle(fontSize: 21))),
    ])));
  }
}*/

/**
 * 
 *Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('titre')
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages',style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
 * 
 */