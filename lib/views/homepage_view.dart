import 'package:cbo_front/views/list/cbo_list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int page = 0;
  TextEditingController codeController = TextEditingController();

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
                  if (page > 0) page--;
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
          children: [
            Icon(Icons.work),
            SizedBox(width: 10),
            Text('CBOs'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) => search(),
              controller: codeController,
              decoration: const InputDecoration(
                labelText: 'Código',
                border: OutlineInputBorder(),

              ),
            ),
            Expanded(
                child: CboList(
              page: page,
              code: codeController.text.isEmpty ? null : codeController.text,
            ))
          ],
        ),
      ),
    );
  }

  void search() {
    setState(() {});
  }
}
