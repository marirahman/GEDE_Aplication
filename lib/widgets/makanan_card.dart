import 'package:GEDE/model/makanan_model.dart';
import 'package:flutter/material.dart';

class MakananCard extends StatelessWidget {
  final MakananModel makananModel;
  const MakananCard({super.key, required this.makananModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListTile(
          leading: Image.network(makananModel.strMealThumb),
          title: Text(
            makananModel.strMeal,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
