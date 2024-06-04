import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgDemo extends StatelessWidget {
  const SvgDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.network(
          'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/12/songoku-9.jpg'),
    );
  }
}
