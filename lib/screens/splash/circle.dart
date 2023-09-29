import 'package:flutter/material.dart';
import 'package:sneaker_king/constants/colors.dart';

Widget buildColoredCircle({bool isLeft = true}) {
  return Container(
    height: 20,
    width: 20,
    margin: EdgeInsets.only(left: isLeft ? 20 : 0, right: isLeft ? 0 : 20),
    decoration: BoxDecoration(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
