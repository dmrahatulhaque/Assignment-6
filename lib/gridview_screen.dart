import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final List<Map<String, String>> items;
  const GridViewScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                items[index]["img"]!,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(items[index]["title"]!),
            ],
          ),
        );
      },
    );
  }
}
