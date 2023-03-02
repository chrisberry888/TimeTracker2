import 'package:flutter/material.dart';
import 'main_page.dart';
import 'secondary_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter(int value) {
    setState(() {
      _counter += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(
        counter: _counter,
        incrementCounter: _incrementCounter,
      ),
      routes: {
        '/main': (context) => MainPage(
          counter: _counter,
          incrementCounter: _incrementCounter,
        ),
        '/secondary': (context) => const SecondaryPage(),
      },
    );
  }
}
