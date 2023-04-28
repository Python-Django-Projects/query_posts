import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:query_posts/auth/login_page.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register Page',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                Get.to(LoginPage());
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
