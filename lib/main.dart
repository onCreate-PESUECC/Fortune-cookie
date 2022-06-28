import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var Fortunes = [
    "Something good's gonna happen to you today",
    "You'll find love today",
    "Today gonna be a bad day",
    "Beware while crossing the road",
  ];
  var fortune = "";
  void fortuneGenerator() {
    setState(() {
      var random = Random();
      fortune = Fortunes[random.nextInt(Fortunes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Press the button to generate your fortune"),
          Text(fortune),
          ElevatedButton(onPressed: fortuneGenerator, child: Text("Press me")),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
