class Post {
  final String title;
  final String body;
  final int id;

  Post.fromJson(Map json) :
    title = json['title'],
    body = json['body'],
    id = json['id'];

}