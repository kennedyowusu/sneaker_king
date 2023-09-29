import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String image;
  final double rating;
  final int ratingCount;
  final bool isFavorite;
  final List<int> sizes;
  final List<Color> colors;

  Product({
    required this.name,
    this.description = '',
    required this.price,
    required this.image,
    required this.rating,
    required this.ratingCount,
    required this.isFavorite,
    required this.colors,
    required this.sizes,
  });
}
