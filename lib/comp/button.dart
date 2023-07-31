import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  final String name;
  final Function() onPressed;
  const Button({required this.onPressed ,required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5)
      ),
      child: Text(name),
    );
  }
}
