import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String images;

  const ImagePage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      images,
      // fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
