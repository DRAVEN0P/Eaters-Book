import 'package:eaters_book/comp/button.dart';
import 'package:eaters_book/comp/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  LoginPage(this.switchScreen,{super.key});
  final void Function() switchScreen;
  final usernamesController = TextEditingController();
  final passwardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
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
              const SizedBox(height: 50),
              TextFd(
                controller: usernamesController,
                hintText: "Email/Username",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              TextFd(
                controller: passwardController,
                hintText: "Passward",
                obscureText: true,
              ),
              const SizedBox(height: 15),
              const Button(name: "Sign In"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  TextButton(
                    onPressed: switchScreen,
                    child: const Text(
                      "Register Now",
                      style: TextStyle(color: Color.fromARGB(255, 13, 86, 176)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
