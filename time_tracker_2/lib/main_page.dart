import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final int counter;
  final Function(int) incrementCounter;

  const MainPage({
    Key? key,
    required this.counter,
    required this.incrementCounter,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Text(
          '${widget.counter}',
          style: const TextStyle(fontSize: 50),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Options',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: const Text('Increment by 5'),
              onTap: () {
                widget.incrementCounter(5);
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Main Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/main');
              }
            ),
            ListTile(
                title: const Text("Secondary Page"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/secondary');
                }
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            child: const Text('Increment by 1'),
            onPressed: () {
              widget.incrementCounter(1);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/secondary');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
