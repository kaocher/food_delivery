import 'package:food_delivery/model/food.dart';
import 'package:flutter/material.dart';
class Restaurent {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>> menu;

  Restaurent(this.name,
  this.waitTime,
  this.distance,
  this.label,
  this.logoUrl,
  this.desc,
  this.score,
      this.menu);

  static Restaurent generateRestaurent(){
    return Restaurent('Restaurent',
        '20-30 min',
        '3km',
        'Restaurent',
        'assets/images/reslogo.jpg',
        'Burger is delicious',
        4.5,
        {'Recommend': Food.generateRecommendedFoods(),
          'Popular': Food.generatePopularFoods(),
          'Noodles':[],
          'Pizza': [],
        }
        );
  }
}