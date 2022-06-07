import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // this is my state / instance variable that changes over time
  int counter = 0;

  void fetchImage() async {
    counter++;
    // not the actual json data. this is information about the request.
    var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
  }

  // Build is called on every rerender of each widget
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: fetchImage),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
