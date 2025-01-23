// lib/screens/post_detail_screen.dart
import 'package:flutter/material.dart';  // Flutter Material 패키지
import 'package:firstproject/models/post_model.dart';  // 게시글 모델


class PostDetailScreen extends StatefulWidget {
  final Post post;
  const PostDetailScreen({super.key, required this.post});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  void _likePost() {
    setState(() {
      widget.post.likes++;
    });
  }

  void _addComment() {
    setState(() {
      widget.post.comments++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.post.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(widget.post.content),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: _likePost,
                ),
                Text('좋아요: ${widget.post.likes}'),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: _addComment,
                ),
                Text('댓글: ${widget.post.comments}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
