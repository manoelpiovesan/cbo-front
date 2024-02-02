import 'package:cbo_front/views/list/cbo_list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text('Página $page'),
              const SizedBox(width: 10),
            ],
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  if(page > 0) page--;
                });
              },
              icon: const Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () {
                setState(() {
                  page++;
                });
              },
              icon: const Icon(Icons.arrow_forward)),
        ],
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children:  [
            Icon(Icons.work),
            SizedBox(width: 10),
            Text('CBOs'),
          ],
        ),
      ),
      body: Center(
        child: CboList(page: page),
      ),
    );
  }
}
