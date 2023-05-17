import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/component/text_field.dart';

import 'button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final paswordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.android,
                    size: 100,
                  ),

                  SizedBox(height: 50),
                  //Hello again
                  Text(
                    "Hell Again",
                    style: GoogleFonts.bebasNeue(fontSize: 36),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome back you have been missed",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 50),
                  //email textfield
                  MyTextField(
                      controller: emailTextController,
                      hintText: "Email",
                      obscureText: false),
                  SizedBox(
                    height: 10,
                  ),

                  MyTextField(
                      controller: paswordTextController,
                      hintText: "Password",
                      obscureText: true),
                  /*
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Password'),
                        ),
                      ),
                    ),
                  ),
                  */
                  SizedBox(
                    height: 15,
                  ),
                  //sign in button

                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    child: MyButton(
                      title: 'Sign In',
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  //not a member register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member"),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          " Register now ",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
