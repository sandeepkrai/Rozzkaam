import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  String name;
  String imgName;
  int p;
  List<Category>? subCategories;


  Category({
    required this.name,
    required this.imgName,
    required this.p,
    this.subCategories
  });
}