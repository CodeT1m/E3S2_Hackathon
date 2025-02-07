import 'package:e3s2_hackathon/constants.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryLight,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
