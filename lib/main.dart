import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mera app hai ji",
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        brightness: Brightness.light,
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: Colors.blue)
      )
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

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8), // gives padding from all edges
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(text),//, style: const TextStyle(color: Colors.blue, fontStyle: FontStyle.italic)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => _changeText(), child: const Text("Click this button"))
          ],
        ),
      ),
    );
  }

  void _changeText(){
    debugPrint("Yo");
    setState(() {
      if(text.startsWith("Y") || text.startsWith('F')){
        text = "Text change hogya";
      }
      else {
        text = "Firse change hogya";
      }
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Mera app hai ji"),
        ),
        body: _bodyWidget()
      );
    }

}


