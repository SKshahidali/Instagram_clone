import 'package:flutter/material.dart';

class ImagePosts extends StatelessWidget {
  const ImagePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context ,index) =>Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 100,
          color: Colors.pink,
        ),
      ));
  }
}