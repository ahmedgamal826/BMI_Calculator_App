import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {super.key,
      required this.icon,
      required this.onpressed,
      required this.heroTag});

  final VoidCallback onpressed;
  final IconData icon;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      backgroundColor: Colors.black,
      onPressed: onpressed,
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
