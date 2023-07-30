import 'package:eaters_book/pages/login_page.dart';
import 'package:eaters_book/pages/register_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  Widget? activePage;

  @override
  void initState() {
    activePage = LoginPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activePage = RegisterPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: activePage,
    );
  }
}
