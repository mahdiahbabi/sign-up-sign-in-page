import 'package:event_book_app/gen/assets.gen.dart';
import 'package:event_book_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
final Color  bcakcolor = Color(0xffDADADA);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500


          ),
          titleMedium: TextStyle(
            color: Colors.white54,
            fontSize: 18,
          )
        ),
       primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        
      ),
      home: const SplashScreen(),
    );
  }
}

