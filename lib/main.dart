import 'package:flutter/material.dart';
import 'listview_screen.dart';
import 'gridview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Common items list
  static const List<Map<String, String>> myItems = [
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg",
      "title": "Android",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877680/ilnb8qjctbxo2xnrtylf.png",
      "title": "Python",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877702/oxrvaljxkohs9szceqqt.png",
      "title": "C++",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877719/agcgvuve4rkmdh6bd5qf.png",
      "title": "PHP",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877735/k5bhru2686zxbjednwwr.png",
      "title": "Ruby",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877758/tafqmkrghogfxucf1qrc.png",
      "title": "Java",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877784/jscq8pzbrs3kuaktersp.png",
      "title": "Rails",
    },
    {
      "img": "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877809/db9p9tmaiikif6zjatft.jpg",
      "title": "Ajax",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // List + Grid
      child: Scaffold(
        appBar: AppBar(
          title: const Text("List & Grid Example"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "ListView"),
              Tab(icon: Icon(Icons.grid_view), text: "GridView"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewScreen(items: myItems),
            GridViewScreen(items: myItems),
          ],
        ),
      ),
    );
  }
}
