import 'package:assets_and_image/loading_from_the_network/model_url.dart';
import 'package:flutter/material.dart';

class ImageUrl extends StatelessWidget {
  const ImageUrl({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: imagesModelUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                );
              }
            },
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return const Text('Error loading images');
            },
            imagesModelUrls[index].imageUrl,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
