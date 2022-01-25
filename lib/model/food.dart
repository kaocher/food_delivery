import 'package:flutter/material.dart';
class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  String cal;
  num score;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.highLight = false});

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
          'assets/images/pizza.jpg',
          'No1. in sales',
          'Burger',
          '30 min',
          4.7,
          '300 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/pizza.jpg',
            },
          ],
          'Simply eat it',
          highLight: true
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/burger.jpg',
        'No1. in sales',
        'Burger',
        '30 min',
        4.7,
        '300 kcal',
        12,
        1,
        [
          {
            'Noodle': 'assets/images/pizza.jpg',
          },
          {

          },
          {

          },
          {

          },
        ],
        'Simply eat it',
        highLight: false,
      ),
    ];
  }
}
