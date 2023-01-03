import 'dart:math';

import 'package:color_parser/color_parser.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Mera app hai ji",
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Yaha ka text change hoga";
  Color currentColour = Colors.red;
  String colour = "";

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8), // gives padding from all edges
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: currentColour, height: 200, width: 200),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: 300),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Colour Here...'),
                onChanged: (value) => colour = value,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => _changeColour(),
                child: const Text("Check Colour"))
          ],
        ),
      ),
    );
  }

  void _changeColour() {
    int randomNum = Random().nextInt(9);
    setState(() {
      print(ColorParser.color(currentColour).toName()?.toLowerCase());
      if (randomNum == 0) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.pink;
      } else if (randomNum == 1) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.red;
      } else if (randomNum == 2) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.blue;
      } else if (randomNum == 3) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.brown;
      } else if (randomNum == 4) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.orange;
      } else if (randomNum == 5) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        }
        currentColour = Colors.green;
      } else if (randomNum == 6) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour)
                .toName()
                .toString()
                .toLowerCase())) {
          Fluttertoast.showToast(
              msg: "Correct!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              //for iOS only
              backgroundColor: Colors.red,
              textColor: Colors.white,
              //message text color
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!",
              //message to show toast
              toastLength: Toast.LENGTH_SHORT,
              //duration for message to show
              gravity: ToastGravity.CENTER,
              //where you want to show, top, bottom
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
        currentColour = Colors.white;
      } else if (randomNum == 7) {
        if (colour.toLowerCase() ==
            (ColorParser.color(currentColour).toName().toString().toLowerCase())) {
          Fluttertoast.showToast(
              msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              backgroundColor: Colors.red, textColor: Colors.white,
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(
              msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1, backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
        currentColour = Colors.purple;
      } else if (randomNum == 8) {
        if (colour.toLowerCase() == ColorParser.color(currentColour).toName()?.toLowerCase()) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              textColor: Colors.white, fontSize: 16.0);
        }
        currentColour = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(53, 58, 80, 100),
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: _bodyWidget());
  }
}
