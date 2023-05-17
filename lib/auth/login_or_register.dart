import 'package:flutter/material.dart';
import 'package:loginui/component/login_page.dart';
import 'package:loginui/component/pages/register_page.dart';

class LoginOrRegistration extends StatefulWidget {
  const LoginOrRegistration({super.key});

  @override
  State<LoginOrRegistration> createState() => _LoginOrRegistrationState();
}

class _LoginOrRegistrationState extends State<LoginOrRegistration> {
  //initialy , show the login page
  bool showLoginPage = true;

  //toggle between login and register

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
