import 'package:flutter/material.dart';
import 'package:query_posts/components/text_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50),
              Icon(Icons.lock_outlined, size: 100),
              SizedBox(height: 50),
              Text('warm welcome just for you!',
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 102, 102), fontSize: 18)),
              SizedBox(height: 25),
              MyTextFields(),
              SizedBox(height: 10),
              MyTextFields(),
            ],
          ),
        ),
      ),
    );
  }
}
