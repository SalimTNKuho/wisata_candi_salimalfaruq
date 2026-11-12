import 'package:flutter/material.dart';
import 'package:wisata_candi_salimalfaruq/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO 1: Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi _candi;
  const new({super.key, required this._candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO 2: Tetapkan parameter shape, margin, dan elevation dari Cari
      child: Column(
        children: [
          // TODO 3: Buat Image sebagai anak dari Column

          // TODO 4: Buat Text sebagai anak dari Column

          // TODO 5: Buat Text sebagai anak dari Column
        
        ],
      ),
    );
  }
}