import 'package:flutter/material.dart';
import 'package:flutter_bloc_cart/features/home/ui/home.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: const Home(),
    );
  }
}





