import 'package:flutter/material.dart';
import 'batiment.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      //decoration: BoxDecoration(color: Colors.lightGreen),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, //Of Row
        children: [
          _detailsBatiment(index),
          Expanded(
            child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(8.0),
                // minScale: 0.1,
                maxScale: 1.6,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/images/GoogleMaps.png'),
                    ),
                    Positioned(
                      bottom: 175,
                      right: 545,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Text('A'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 175,
                      right: 592,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Text('B'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 220,
                      right: 632,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Text('C'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 210,
                      right: 590,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        child: Text('D'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 250,
                      right: 560,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 4;
                          });
                        },
                        child: Text('E'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 275,
                      right: 530,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 5;
                          });
                        },
                        child: Text('F'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 299,
                      right: 515,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 6;
                          });
                        },
                        child: Text('G'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 325,
                      right: 545,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 7;
                          });
                        },
                        child: Text('H'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 200,
                      right: 455,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 8;
                          });
                        },
                        child: Text('I'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 510,
                      right: 640,
                      width: 20.0,
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 9;
                          });
                        },
                        child: Text('J'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Widget _detailsBatiment(int index) {
  return IndexedStack(index: index, children: <Widget>[
    _batimentA(),
    _batimentB(),
    _batimentC(),
    _batimentD(),
    _batimentE(),
    _batimentF(),
    _batimentG(),
    _batimentH(),
    _batimentI(),
    _batimentJ(),
  ]);
}

Widget _separateur(double width, double height, double marginleft) {
  //_separateur(320, 15)
  const primayColor = Color(0xFF002F57);
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.only(left: marginleft),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: primayColor,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}

Widget cercleShape(String bat) {
  const secondaryColor = Color(0xFF3C688A);
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: secondaryColor,
    ),
    child: Center(
      child: Text(
        bat,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget _batimentA() {
  ////////////////////////////////////////////A/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(batiments[0].image), //------> Image du bat
        width: 350,
        height: 250,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Bâtiment",
            style: TextStyle(
              color: primayColor,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          cercleShape(
              batiments[0].titre), //---------------------------> Titre du bat
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            batiments[0]
                .description, //----------------------------> description du bat
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ],
      ),
      _separateur(70, 8, 5), //_separateur(320, 15)
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            batiments[0]
                .details, //---------------------------------> Details du bat
            style: const TextStyle(
              color: primayColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.phone),
          const SizedBox(
            width: 5,
          ),
          Text(
            "03 64 26 83 00",
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _batimentB() {
  //////////////////////////////////////////////B/////////////////////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image:
              AssetImage(batiments[1].image), //----------------> Image du bat
          width: 350,
          height: 250,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Bâtiment",
              style: TextStyle(
                color: primayColor,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            cercleShape(
                batiments[1].titre), //---------------------------> Titre du bat
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[1]
                  .description, //----------------------------> description du bat
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ],
        ),
        _separateur(70, 8, 5), /////////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[1]
                  .details, //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles B002 -> B005",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15), ///////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage B1:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Amphitéâtre C001\nSalles B101 -> B108",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage B2:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Amphitéâtre C001\nSalles B201 -> B208",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(340, 5, 5),
      ],
    ),
  );
}

Widget _batimentC() {
  ////////////////////////////////////////////////////////C/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Image(
      image: AssetImage(batiments[2].image), //----------------> Image du bat
      width: 350,
      height: 250,
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Bâtiment",
          style: TextStyle(
            color: primayColor,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        cercleShape(
            batiments[2].titre), //---------------------------> Titre du bat
      ],
    ),
    const SizedBox(
      height: 10,
    ),
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          batiments[2]
              .description, //----------------------------> description du bat
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.w500,
            fontSize: 19,
          ),
        ),
      ],
    ),
    _separateur(70, 8, 5), /////////////////////////////
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          batiments[2]
              .details, //---------------------------------> Details du bat
          style: const TextStyle(
            color: primayColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "Amphithéâtres C003 -> C005\n         Salles C008 - C009",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        Icon(
          Icons.elevator_outlined,
          color: primayColor,
          size: 40,
        ),
        const SizedBox(
          width: 70,
        ),
        Icon(Icons.wifi),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.electrical_services),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.group),
        Text(
          ': 25',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.accessible_outlined,
          color: primayColor,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.wc_outlined,
          color: primayColor,
        ),
      ],
    ),
    _separateur(320, 5, 15), ///////////////////////////
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          "Etage C1:", //---------------------------------> Details du bat
          style: const TextStyle(
            color: primayColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          "Amphithéâtres C002\nSalles C101 -> C104",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        Icon(
          Icons.elevator_outlined,
          color: primayColor,
          size: 40,
        ),
        const SizedBox(
          width: 70,
        ),
        Icon(Icons.wifi),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.electrical_services),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.group),
        Text(
          ': 25',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.accessible_outlined,
          color: primayColor,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.wc_outlined,
          color: primayColor,
        ),
      ],
    ),
    _separateur(320, 5, 15),
  ]));
}

Widget _batimentD() {
  ////////////////////////////////////////////D/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(batiments[3].image), //------> Image du bat
        width: 350,
        height: 250,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Bâtiment",
            style: TextStyle(
              color: primayColor,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          cercleShape(
              batiments[3].titre), //---------------------------> Titre du bat
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            batiments[3]
                .description, //----------------------------> description du bat
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ],
      ),
      _separateur(70, 8, 5), //_separateur(320, 15)
    ],
  );
}

Widget _batimentE() {
  ////////////////////////////////////////////////////////E/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Image(
      image: AssetImage(batiments[4].image), //----------------> Image du bat
      width: 350,
      height: 250,
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Bâtiment",
          style: TextStyle(
            color: primayColor,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        cercleShape(
            batiments[4].titre), //---------------------------> Titre du bat
      ],
    ),
    const SizedBox(
      height: 10,
    ),
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          batiments[4]
              .description, //----------------------------> description du bat
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.w500,
            fontSize: 19,
          ),
        ),
      ],
    ),
    _separateur(70, 8, 5), /////////////////////////////
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          batiments[4]
              .details, //---------------------------------> Details du bat
          style: const TextStyle(
            color: primayColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "E002-Espace conférence",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        const SizedBox(
          width: 100,
        ),
        Icon(Icons.wifi),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.electrical_services),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.group),
        Text(
          ': 50',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.accessible_outlined,
          color: primayColor,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.wc_outlined,
          color: primayColor,
        ),
      ],
    ),
    _separateur(320, 5, 15), ///////////////////////////
    Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          "Etage E1:", //---------------------------------> Details du bat
          style: const TextStyle(
            color: primayColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          "Salles E107 -> C126",
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    const SizedBox(
      height: 15,
    ),
    Row(
      children: [
        const SizedBox(
          width: 100,
        ),
        Icon(Icons.wifi),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.electrical_services),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.group),
        Text(
          ': 25',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.accessible_outlined,
          color: primayColor,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.wc_outlined,
          color: primayColor,
        ),
      ],
    ),
    _separateur(320, 5, 15),
  ]));
}

Widget _batimentF() {
  //////////////////////////////////////////////F/////////////////////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image:
              AssetImage(batiments[5].image), //----------------> Image du bat
          width: 350,
          height: 250,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Bâtiment",
              style: TextStyle(
                color: primayColor,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            cercleShape(
                batiments[5].titre), //---------------------------> Titre du bat
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[5]
                  .description, //----------------------------> description du bat
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ],
        ),
        _separateur(70, 8, 5), /////////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[1]
                  .details, //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles F101 -> F123",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),

        _separateur(320, 5, 15), ///////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage F2:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles F201 -> F217",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage F3:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles F303 -> F317",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(340, 5, 5),
      ],
    ),
  );
}

Widget _batimentG() {
  //////////////////////////////////////////////G/////////////////////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image:
              AssetImage(batiments[6].image), //----------------> Image du bat
          width: 350,
          height: 250,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Bâtiment",
              style: TextStyle(
                color: primayColor,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            cercleShape(
                batiments[6].titre), //---------------------------> Titre du bat
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[6]
                  .description, //----------------------------> description du bat
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ],
        ),
        _separateur(70, 8, 5), /////////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[6]
                  .details, //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles G101 -> G130",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15), ///////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage G2:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles G201 -> G223",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage G3:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles G301 -> G325",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(340, 5, 5),
      ],
    ),
  );
}

Widget _batimentH() {
  //////////////////////////////////////////////G/////////////////////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image:
              AssetImage(batiments[7].image), //----------------> Image du bat
          width: 350,
          height: 250,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Bâtiment",
              style: TextStyle(
                color: primayColor,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            cercleShape(
                batiments[7].titre), //---------------------------> Titre du bat
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[7]
                  .description, //----------------------------> description du bat
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ],
        ),
        _separateur(70, 8, 5), /////////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              batiments[7]
                  .details, //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles H101 -> H126",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15), ///////////////////////////
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage H2:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles H201 -> G224",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(320, 5, 15),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              "Etage H3:", //---------------------------------> Details du bat
              style: const TextStyle(
                color: primayColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Salles H301 -> H324",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.elevator_outlined,
              color: primayColor,
              size: 40,
            ),
            const SizedBox(
              width: 70,
            ),
            Icon(Icons.wifi),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.electrical_services),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.group),
            Text(
              ': 25',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.accessible_outlined,
              color: primayColor,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.wc_outlined,
              color: primayColor,
            ),
          ],
        ),
        _separateur(340, 5, 5),
      ],
    ),
  );
}

Widget _batimentI() {
  ////////////////////////////////////////////A/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(batiments[8].image), //------> Image du bat
        width: 350,
        height: 250,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Bâtiment",
            style: TextStyle(
              color: primayColor,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          cercleShape(
              batiments[8].titre), //---------------------------> Titre du bat
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            batiments[8]
                .description, //----------------------------> description du bat
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ],
      ),
      _separateur(320, 5, 5), //_separateur(320, 15)
    ],
  );
}

Widget _batimentJ() {
  ////////////////////////////////////////////A/////////////////////////////////////////
  const primayColor = Color(0xFF002F57);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(batiments[9].image), //------> Image du bat
        width: 350,
        height: 250,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Bâtiment",
            style: TextStyle(
              color: primayColor,
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          cercleShape(
              batiments[9].titre), //---------------------------> Titre du bat
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            batiments[9]
                .description, //----------------------------> description du bat
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
        ],
      ),
      _separateur(320, 5, 5), //_separateur(320, 15)
    ],
  );
}
