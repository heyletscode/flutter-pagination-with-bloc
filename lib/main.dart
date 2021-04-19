import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination_app/cubit/posts_cubit.dart';
import 'package:pagination_app/data/repositories/posts_respository.dart';
import 'package:pagination_app/data/services/posts_service.dart';
import 'package:pagination_app/presentation/posts_screen.dart';

void main() {
  runApp(PaginationApp(
    repository: PostsRepository(PostsService()),
  ));
}

class PaginationApp extends StatelessWidget {

  final PostsRepository repository;

  const PaginationApp({Key key, this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsCubit(repository),
        child: PostsView(),
      ),
    );
  }
}
