part of 'posts_bloc.dart';

abstract class PostsEvent {}

class PostsInitialFetchEvent extends PostsEvent{}

class PostAddEvent extends PostsEvent{}