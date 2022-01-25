import 'package:flutter/material.dart';
import 'package:food_delivery/model/restaurent.dart';
import 'package:food_delivery/screen/details/details.dart';
import 'package:food_delivery/widget/food_item..dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurent restaurent;
  FoodListView(
      this.selected,
      this.callback,
      this.pageController,
      this.restaurent,
      );

  @override
  Widget build(BuildContext context) {
    final catagory= restaurent.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index)=> callback(index),
        children:
          catagory.map((e) =>
              ListView.separated(
                padding: EdgeInsets.zero,
              itemBuilder: (context, index)=>
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(restaurent.menu[catagory[selected]]![index])));
                    },
                    child: FoodItem(
                restaurent.menu[catagory[selected]]![index]
              ),
                  ),
              separatorBuilder: (_, index)=> SizedBox(height: 15),
              itemCount: restaurent.menu[catagory[selected]]!.length)).toList(),
      ),
    );
  }
}
