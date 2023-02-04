import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialistItem extends StatelessWidget {
  final String imagePath;
  const SpecialistItem({Key? key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        Image.asset(
          imagePath,
          width: 100,
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        ),
      ]),
    );
  }
}
