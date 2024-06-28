import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.elliptical(100, 75)),
        child: Image.network(
          'https://play-lh.googleusercontent.com/Bddip99b3uI3X3i2Z0M7NxBgcZ0q6jyjVHd7Q1zHEzvs_1jlVuNc_57dl-QsF3S-_Nw',
          fit: BoxFit.scaleDown,
          ),
      ),
    );
  }
}