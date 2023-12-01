import 'dart:developer';
import 'package:dio_api_bloc/data/models/post_model.dart';
import 'package:dio_api_bloc/data/repositories/post_repository.dart';
import 'package:dio_api_bloc/logic/cubits/post_cubit/post_cubit.dart';
import 'package:dio_api_bloc/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
