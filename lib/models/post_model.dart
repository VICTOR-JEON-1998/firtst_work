// lib/models/post_model.dart
class Post {
  final int id;
  final String title;
  final String content;
  int likes;
  int comments;

  Post({required this.id, required this.title, required this.content, required this.likes, required this.comments});
}
