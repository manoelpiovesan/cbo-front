import 'package:cbo_front/views/homepage_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.blueAccent,
          primary: Colors.blue,
        ),
        useMaterial3: false,
      ),
      home: const Homepage(),
    );
  }
}

