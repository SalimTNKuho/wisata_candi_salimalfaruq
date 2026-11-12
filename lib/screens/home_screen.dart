import 'package:flutter/material.dart';
import 'package:wisata_candi_salimalfaruq/data/candi_data.dart';
import 'package:wisata_candi_salimalfaruq/models/candi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Candi candi = candiList[index];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 1: Buat appbar dengan judul Wisata Candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      // TODO 2: Buat body dengan GridView.builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) => candi,
      ),
      // TODO 3: Buat ItemCard sebagai return value dari GridView.builder
    );
  }
}
