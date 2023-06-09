import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:query_posts/auth/login_page.dart';
import 'package:query_posts/auth/register_page.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
