import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../button.dart';
import '../text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final paswordTextController = TextEditingController();
  final confirmpaswordTextController = TextEditingController();
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
                    "Let's create account",
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
                  MyTextField(
                      controller: confirmpaswordTextController,
                      hintText: "Confirm password",
                      obscureText: true),
                  //sign in button
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    child: MyButton(title: 'Sign Up'),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  //not a member register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have account"),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Log In now",
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
