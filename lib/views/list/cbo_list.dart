import 'package:cbo_front/consumer/cbo_consumer.dart';
import 'package:flutter/material.dart';

class CboList extends StatefulWidget {
  final int page;

  const CboList({required this.page, super.key});

  @override
  State<CboList> createState() => _CboListState();
}

class _CboListState extends State<CboList> {
  CboConsumer cboConsumer = CboConsumer();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: cboConsumer.getAll(page: widget.page),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].code),
                  subtitle: Text(snapshot.data![index].description),
                  leading: const Icon(Icons.work),
                );
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        });
  }
}
