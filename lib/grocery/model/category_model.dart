import 'package:flutter/material.dart';

import '../veggie_home.dart';


class Category {
  final String title;
  final String image;
  final VoidCallback onTap;

  Category({required this.onTap, required this.title, required this.image});
}

List<Category> getCategories(BuildContext context) {
  return [
    Category(title: 'Beef', image: 'assets/category/beef.jpg', onTap: () {}),
    Category(title: 'Bakery', image: 'assets/category/bread.jpg', onTap: () {}),
    Category(title: 'Coffee & Tea', image: 'assets/category/coffee.jpg', onTap: () {}),
    Category(title: 'Dairy & Eggs', image: 'assets/category/egg.jpg', onTap: () {}),
    Category(title: 'Juice & Drinks', image: 'assets/category/juice.jpg', onTap: () {}),
    Category(title: 'Fruits & Veggies', image: 'assets/category/veggie.jpg', onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const VeggieHome()));
    }),
    Category(title: 'Cereals', image: 'assets/category/cereal.jpg', onTap: () {}),
    Category(title: 'Snacks', image: 'assets/category/snacks.jpg', onTap: () {}),
  ];
}
