import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoViewExample(),
    );
  }
}

class PhotoViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Photo View Example'),
        backgroundColor: Colors.yellow[300],
      ),
      body: Center(
        child: PhotoView(
          imageProvider: NetworkImage(
              'https://th.bing.com/th/id/OIP.245aI-OcvgD-G6oeirx3xgHaNK?rs=1&pid=ImgDetMain'),
          backgroundDecoration: BoxDecoration(
            color: Colors.white,
          ),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2.0,
        ),
      ),
    );
  }
}