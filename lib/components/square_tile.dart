import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), 
        color: Colors.white70, 
        border: Border.all(color: Colors.white, width: 2)
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
