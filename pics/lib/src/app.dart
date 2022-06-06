import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // this is my state / instance variable that changes over time
  int counter = 0;

  // Build is called on every rerender of each widget
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 10;
            });
          },
        ),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
