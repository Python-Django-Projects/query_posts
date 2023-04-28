// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Not a memeber?',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Register now',
                    style: TextStyle(
                        wordSpacing: 1,
                        letterSpacing: 1.5,
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
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
