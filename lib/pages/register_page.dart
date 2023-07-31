import 'package:eaters_book/comp/button.dart';
import 'package:eaters_book/comp/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final userName = TextEditingController();
  final passward = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 189, 189),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "EATERS BOOK",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextFd(
                controller: userName,
                hintText: "User Name",
                obscureText: false),
            const SizedBox(height: 20),
            TextFd(
                controller: email,
                hintText: "Email Address",
                obscureText: false),
            const SizedBox(height: 20),
            TextFd(
                controller: passward, hintText: "Passward", obscureText: true),
            const SizedBox(height: 20),
            TextFd(
                controller: passward, hintText: "Confirm Passward", obscureText: true),
            const SizedBox(height: 20),
            Button(name: "Register", onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
