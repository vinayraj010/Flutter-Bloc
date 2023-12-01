import 'package:dio_api_bloc/data/models/post_model.dart';
import 'package:dio_api_bloc/data/repositories/post_repository.dart';
import 'package:dio_api_bloc/logic/cubits/post_cubit/post_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super( PostLoadingState() ) {
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();

  void fetchPosts() async {
    try {
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(PostLoadedState(posts));
    }
    on DioError catch(ex) {
      if(ex.type == DioErrorType.other) {
        emit( PostErrorState("Can't fetch posts, please check your internet connection!") );
      }
      else {
        emit( PostErrorState(ex.type.toString()) );
      }
    }
  }
}