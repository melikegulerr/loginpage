import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:project1/components1/mybutton.dart';
import 'package:project1/components1/mytextfield.dart';
import 'package:project1/components1/squaretile.dart';
import 'package:project1/main.dart';

class secondLoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  secondLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                // welcome back you have been missed
                Text(
                  "Welcome back you have been missed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //username
                mytextfied(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false),
                SizedBox(height: 10),
                // password
                mytextfied(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true),
                SizedBox(height: 10),

                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "Forgot password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // sign in
                mybutton(onTap: signUserIn),
                SizedBox(height: 20),
                // or contiune
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "or continue",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                // google and apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    squaretile(imagePath: "lib/images/google.png"),
                    SizedBox(
                      width: 10,
                    ),
                    squaretile(imagePath: "lib/images/apple.png"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                //not a member register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      " Register now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
