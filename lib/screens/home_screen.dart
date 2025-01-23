// lib/screens/home_screen.dart
import 'package:flutter/material.dart';  // Flutter Material 패키지
import 'package:firstproject/screens/board_screen.dart';  // 게시판 화면


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('게시판 홈')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('자유게시판'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BoardScreen(category: '자유게시판')),
              );
            },
          ),
          ListTile(
            title: const Text('공지사항'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BoardScreen(category: '공지사항')),
              );
            },
          ),
        ],
      ),
    );
  }
}
