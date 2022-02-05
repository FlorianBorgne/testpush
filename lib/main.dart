import 'package:flutter/material.dart';
import 'package:flutter_application_1/buttons.dart';
import 'package:flutter_application_1/side_bar.dart';

//https://docs.flutter.dev/development/ui/layout
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const primayColor = Color(0xFF002F57);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //color: #002F57
          title: Row(
            children: [
              Flexible(
                flex: 2,
                child: Image(
                  image: AssetImage('assets/images/logo_upjv.png'),
                  width: 60,
                  height: 60,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: SizedBox(
                  width: 900,
                ),
              ),
              Flexible(flex: 3, child: Text('Pôle Citadelle')),
            ],
          ),
          backgroundColor: primayColor,
        ),
        // drawer: SideBar(),
        body: Row(
          children: [
            SideBar(),
            InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(0.0),
                // minScale: 0.1,
                maxScale: 1.6,
                child: Image(
                  image: AssetImage('assets/images/GoogleMaps.png'),
                )),
          ],
        ),
      ),
      //ButtonsList(),
    );
  }
}
/**
 * SizedBox(
                width: 60.0,
                height: 60.0,
                child: Image(
                  image: AssetImage('assets/images/logo_upjv.png'),
                ),
              ),
 * 
 * 
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