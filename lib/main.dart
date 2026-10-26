import 'package:flutter/material.dart';
import 'package:wisata_candi_salimalfaruq/data/candi_data.dart';
import 'package:wisata_candi_salimalfaruq/screens/detail_screen.dart';
import 'package:wisata_candi_salimalfaruq/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: DetailScreen(candi: candiList[0],),
      home: ProfileScreen(),
    );
  }
}