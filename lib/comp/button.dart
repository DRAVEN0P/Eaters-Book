import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  final String name;
  const Button({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(147, 65, 73, 75),
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
