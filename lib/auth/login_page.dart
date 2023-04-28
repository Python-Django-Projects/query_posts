// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:query_posts/auth/forgot_password.dart';
import 'package:query_posts/auth/register_page.dart';
import 'package:query_posts/components/my_button.dart';
import 'package:query_posts/components/my_textfield.dart';
import 'package:query_posts/components/squre_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // signed user in
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Icon(Icons.lock, size: 100),
              SizedBox(height: 50),
              Text(
                'Welcome to our application',
                style: TextStyle(
                    // color: Color.fromARGB(177, 0, 0, 0),
                    fontSize: 18,
                    letterSpacing: 1),
              ),
              SizedBox(height: 50),
              MyTextFielld(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextFielld(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(ForgotPassword());
                      },
                      child: Text('Forgot password'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('OR'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SqureTile(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 20),
                  SqureTile(imagePath: 'assets/images/apple.jpeg'),
                ],
              ),
              Expanded(child: SizedBox(height: double.infinity)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a memeber?',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Get.to(Registration());
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(fontSize: 15, letterSpacing: 1),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
