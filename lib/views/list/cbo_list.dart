import 'package:cbo_front/consumer/cbo_consumer.dart';
import 'package:flutter/material.dart';

class CboList extends StatefulWidget {
  const CboList({super.key});

  @override
  State<CboList> createState() => _CboListState();
}

class _CboListState extends State<CboList> {
  CboConsumer cboConsumer = CboConsumer();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: cboConsumer.getAll(), builder: (context, snapshot) {
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
            );
          },
        );
      }

      return const Center(child: CircularProgressIndicator());
    });
  }
}
