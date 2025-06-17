import 'package:flutter/cupertino.dart';

class ImageCircle extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  const ImageCircle({required this.image, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Image.asset(
          image,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
