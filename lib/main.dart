import 'package:flutter/material.dart';
import 'package:loginui/auth/auth.dart';
import 'package:loginui/auth/login_or_register.dart';
import 'package:loginui/component/login_page.dart';
import 'package:loginui/component/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}
