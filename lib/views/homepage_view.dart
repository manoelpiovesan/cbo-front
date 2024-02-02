import 'package:cbo_front/views/list/cbo_list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CBO List'),
      ),
      body: const Center(
        child: CboList(),
      ),
    );
  }
}
