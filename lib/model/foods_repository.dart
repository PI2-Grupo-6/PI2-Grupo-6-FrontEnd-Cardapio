import 'food.dart';
import 'package:flutter/material.dart';

class FoodsRepository {
  static List<Food> loadFoods() {
    const allFoods = <Food>[
      Food(
        name: "Arroz",
        foodType: "grao",
        description: 'Arroz branco com cenoura',
      ),
      Food(
        name: "Arroz",
        foodType: "grao",
        description: 'Arroz branco com cenoura',
      ),
      Food(
        name: "Arroz",
        foodType: "porcao",
        description: 'Arroz branco com cenoura',
      ),
    ];
    return allFoods;
  }
}
