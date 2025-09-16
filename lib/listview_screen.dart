import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final List<Map<String, String>> items;
  const ListViewScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.network(
              items[index]["img"]!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(items[index]["title"]!),
          ),
        );
      },
    );
  }
}
