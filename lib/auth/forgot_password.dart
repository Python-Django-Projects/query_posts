// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:query_posts/auth/login_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 250),
                const Icon(Icons.lock_open, size: 100),
                const SizedBox(height: 50),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Enter you username or email address and we will send you a link to get into your account',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'username or email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 224, 224, 224)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 90, 181, 255)),
                      ),
                      fillColor: Color.fromARGB(255, 243, 243, 243),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 142, 142, 142))),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: const Text(
                        'Reset Password',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox(height: double.infinity)),
                TextButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: const Text('Go Back To Login Page'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
