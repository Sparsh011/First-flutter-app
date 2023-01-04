import 'dart:math';

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
  String currentColourVisible = "red";

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
      if (randomNum == 0) {
        if (colour.toString().toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER);
        }

        currentColourVisible = "pink";
        currentColour = Colors.pink;
      }
      else if (randomNum == 1) {
        if (colour.toString().toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER);
        }

        currentColourVisible = "red";
        currentColour = Colors.red;
      }
      else if (randomNum == 2) {
        if (colour.toString().toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }

        currentColourVisible = "blue";
        currentColour = Colors.blue;
      }
      else if (randomNum == 3) {
        if (colour.toString().toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }

        currentColourVisible = "brown";
        currentColour = Colors.brown;
      }
      else if (randomNum == 4) {
        if (colour.toString().toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);

        }

        currentColourVisible = "orange";
        currentColour = Colors.orange;
      }
      else if (randomNum == 5) {
        if (colour.toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }

        currentColourVisible = "green";
        currentColour = Colors.green;
      }
      else if (randomNum == 6) {
        if (colour.toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }

        currentColourVisible = "white";
        currentColour = Colors.white;
      }
      else if (randomNum == 7) {
        if (colour.toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
        }

        currentColourVisible = "purple";
        currentColour = Colors.purple;
      }
      else if (randomNum == 8) {
        if (colour.toLowerCase() == currentColourVisible) {
          Fluttertoast.showToast(msg: "Correct!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 16.0);
        }
        else {
          Fluttertoast.showToast(msg: "INCORRECT!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              textColor: Colors.white, fontSize: 16.0);
        }

        currentColourVisible = "yellow";
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
