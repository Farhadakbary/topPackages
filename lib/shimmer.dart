import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ShimmerExample(),
    );
  }
}

class ShimmerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text('Shimmer Example'),
        backgroundColor: Colors.yellow[300],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Card(
                elevation: 4,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}