import 'package:flutter/material.dart';
import 'package:youtube_video_ai_translate_application/ui/app_bar_bottom_navigation.dart';
import 'package:youtube_video_ai_translate_application/ui/user/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube ai translate app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
