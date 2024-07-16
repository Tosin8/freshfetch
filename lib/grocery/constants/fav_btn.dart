import 'package:flutter/material.dart';


class FavBtn extends StatelessWidget {
  const FavBtn({
    super.key,
    this.radius = 12,
  });

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: const Color(0xFFE3E2E3),
      child: const Icon(Icons.favorite_border_outlined),
    );
  }
}