import 'package:flutter/material.dart';
import 'package:flutter_application_1/buttons.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Citadelle'),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Nom du Bâtiment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
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
            ),
            body: Center(
                child: InteractiveViewer(
                    boundaryMargin: const EdgeInsets.all(10.0),
                    // minScale: 0.1,
                    maxScale: 1.6,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 10,
                          right: 40,
                          child: Image(
                            image: AssetImage('assets/images/GoogleMaps.png'),
                          ),
                        ),
                        ButtonsList(),
                      ],
                    )))));
  }
}
/**
 * body: Stack(
            fit: StackFit.loose,
            children: [
              PhotoView(
                imageProvider: AssetImage('assets/images/GoogleMaps.png'),
              ),
              Positioned(
                bottom: 180,
                right: 650,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('A'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  ),
                ),
              ),
              Positioned(
                bottom: 180,
                right: 700,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('B'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  ),
                ),
              )
            ],
          )
 */