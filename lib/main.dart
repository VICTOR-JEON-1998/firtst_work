// lib/main.dart
import 'package:flutter/material.dart';  // Flutter Material 패키지
import 'package:firstproject/screens/login_screen.dart';  // 로그인 화면
import 'package:firstproject/screens/home_screen.dart';   // 메인 화면

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '게시판 애플리케이션',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(), // 앱 시작 시 로그인 화면을 표시
    );
  }
}
