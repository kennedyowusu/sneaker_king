import 'package:flutter/material.dart';
import 'package:sneaker_king/constants/images.dart';
import 'package:sneaker_king/model/product.dart';

List<Product> products = [
  Product(
    name: 'Nike Air Max 200',
    description: 'Men\'s Shoe',
    price: 299.99,
    image: shoe1,
    rating: 4.8,
    ratingCount: 132,
    isFavorite: true,
    colors: [
      Colors.brown,
      Colors.teal,
      Colors.orange,
      Colors.indigo,
    ],
    sizes: [40, 41, 42, 43],
  ),
  Product(
    name: 'Nike Metcon 6',
    description: 'Unisex Training Shoe',
    price: 129.99,
    image: shoe2,
    rating: 4.5,
    ratingCount: 240,
    isFavorite: false,
    colors: [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.yellow,
    ],
    sizes: [40, 41, 42, 43, 44],
  ),
  Product(
    name: 'Nike Air Zoom',
    description: 'Men\'s Running Shoe',
    price: 119.99,
    image: shoe3,
    rating: 4.1,
    ratingCount: 240,
    isFavorite: true,
    colors: [
      Colors.orangeAccent,
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.purpleAccent,
    ],
    sizes: [43, 44, 45, 46],
  ),
];
