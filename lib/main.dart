import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vector_math/vector_math.dart' as Vector;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          Center(child: Image.asset('assets/login_screen.png')),
          ClipPath(
            clipper: OrangePainter(),
            child: Container(
              color: Colors.blue,
            ),
          ),
          ClipPath(
            clipper: PurplePainter(),
            child: Container(
              color: Colors.lightGreenAccent.withOpacity(0.7),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       SizedBox(
          //         height: 80,
          //       ),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       TextFormField(
          //           keyboardType: TextInputType.emailAddress,
          //           decoration: InputDecoration(
          //               labelText: 'Email',
          //               border: OutlineInputBorder(
          //                   borderSide:
          //                       BorderSide(color: Colors.black, width: 5.0)))),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       TextFormField(
          //           obscureText: true,
          //           decoration: InputDecoration(
          //               labelText: 'Password',
          //               border: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                       color: Colors.greenAccent, width: 5.0)))),
          //       SizedBox(
          //         height: 40,
          //       ),
          //       MaterialButton(
          //         splashColor: Colors.lightGreenAccent,
          //         color: Colors.lightBlue,
          //         child: Text(
          //           'Sign in',
          //           style: TextStyle(color: Colors.white, fontSize: 20),
          //         ),
          //         minWidth: MediaQuery.of(context).size.width,
          //         height: 55,
          //         onPressed: () {},
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    ));
  }
}

class PurplePainter extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class OrangePainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    var path = new Path();
    path.lineTo(0, size.height / 3);
    var firstControlPoint = new Offset(size.width / 6, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2.85, size.height / 4);
    var secondControlPoint = new Offset(size.width / 2 + 40, size.height / 6);
    var secondEndPoint =
        new Offset(size.width - (size.width / 4), size.height / 3.5);

    var thirdControlPoint = new Offset(size.width - 20, size.height / 6);
    var thirdEndPoint = new Offset(size.width, size.height / 4);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height / 4);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(OrangePainter oldClipper) => false;
}
