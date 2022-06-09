import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'models/image_model.dart';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // this is my state / instance variable that changes over time
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    // not the actual json data. this is information about the request.
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final imageModel = ImageModel.fromJson(json.decode(
        response.body)); // remember the JSON is raw needs to be converted

    // update when the images come
    setState(() {
      images.add(imageModel);
    });
  }

  // Build is called on every rerender of each widget
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: fetchImage),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
