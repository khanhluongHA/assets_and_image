import 'package:assets_and_image/assets_and_image/model/model_grid.dart';
import 'package:flutter/material.dart';

class AssetsAndImage extends StatelessWidget {
  const AssetsAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          images[index].imagePath,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
