// lib/screens/board_screen.dart
import 'package:flutter/material.dart';  // Flutter Material 패키지
import 'package:firstproject/models/post_model.dart';  // 게시글 모델
import 'package:firstproject/widgets/custom_button.dart';  // CustomButton import


// 추가로 필요한 위젯, 예를 들어 버튼, 텍스트 입력 등도 import 가능



class BoardScreen extends StatefulWidget {
  final String category;
  const BoardScreen({super.key, required this.category});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<Post> posts = [
    Post(id: 1, title: '게시글 1', content: '이것은 첫 번째 게시글', likes: 10, comments: 2),
    Post(id: 2, title: '게시글 2', content: '이것은 두 번째 게시글', likes: 5, comments: 3),
  ];

  void _addPost() {
    // 새 글 추가하는 로직
    setState(() {
      posts.add(Post(id: posts.length + 1, title: '새 게시글', content: '내용을 작성하세요.', likes: 0, comments: 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.category} 게시판')),
      body: Column(
        children: [
          CustomButton(
            onPressed: _addPost,
            text: '글 작성',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text('좋아요: ${post.likes} 댓글: ${post.comments}'),
                  onTap: () {
                    // 글 상세 화면으로 이동
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
