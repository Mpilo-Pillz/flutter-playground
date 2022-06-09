import 'package:flutter/material.dart';
import '../models/image_model.dart';

// this will be a stateless image because this widget is not changing the state. the state will be changed by the app widget
class ImageList extends StatelessWidget {
  // final List<ImageModel> images;
  final List images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          margin: EdgeInsets.all(20.0),
          child: Image.network(images[index].url),
        );
        
      },
    );
  }
}
