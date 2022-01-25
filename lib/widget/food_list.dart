import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/model/restaurent.dart';

AllColor allColor= AllColor();

class Foodlist extends StatelessWidget {

  final int selected;
  final Function callback;
  final Restaurent restaurent;
Foodlist(this.selected, this.callback, this.restaurent);

  @override
  Widget build(BuildContext context) {
    final catagory = restaurent.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=> GestureDetector(
            onTap: ()=> callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index ? allColor.primaryColor : Colors.white,
              ),
              child: Text(
                catagory[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          separatorBuilder: (_, index)=> SizedBox(width: 20),
          itemCount: catagory.length),
    );
  }
}
