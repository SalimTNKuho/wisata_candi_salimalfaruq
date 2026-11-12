import 'package:flutter/material.dart';
import 'package:wisata_candi_salimalfaruq/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO 1: Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO 6: Implementasi routing ke DetailScreen (detail_screen.dart)
    return Card(
      // TODO 2: Tetapkan parameter shape, margin, dan elevation dari Cari
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        children: [
          // TODO 3: Buat Image sebagai anak dari Column
          Expanded(
            // TODO 7: Implementasi Hero animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // ini gk ada di slide petunjuk. Namun muncul dalam gambaran terakhir????
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // TODO 4: Buat Text sebagai anak dari Column
          // Text 1
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 8
            ),
            child: Text(
              candi.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          // TODO 5: Buat Text sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 8
            ),
            child: Text(
              candi.type,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}