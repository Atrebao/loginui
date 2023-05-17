import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginui/auth/login_or_register.dart';

import '../component/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is logged
            if (snapshot.hasData) {
              return const HomePage();
            } else {
              return const LoginOrRegistration();
            }
          }),
    );
  }
}
