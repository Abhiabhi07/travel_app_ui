
import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          category,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black38),
        ),
      ),
    );
  }
}
