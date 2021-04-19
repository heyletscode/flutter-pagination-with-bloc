part of 'posts_cubit.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}
class PostsLoaded extends PostsState {
  final List<Post> posts;

  PostsLoaded(this.posts);
}

class PostsLoading extends PostsState {
  final List<Post> oldPosts;
  final bool isFirstFetch;

  PostsLoading(this.oldPosts, {this.isFirstFetch=false});
}