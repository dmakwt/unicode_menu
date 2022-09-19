import 'package:flutter/material.dart';

import 'package:flutter_application_menu/models/food.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key, required this.food}) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Center(
        child: Image.network(food.imgURL),
      ),
    );
  }
}
