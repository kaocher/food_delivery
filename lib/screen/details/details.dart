import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/model/food.dart';
import 'package:food_delivery/screen/details/widget/food_details.dart';
import 'package:food_delivery/screen/details/widget/food_image.dart';
import 'package:food_delivery/widget/custom_app_bar.dart';

AllColor allColor= AllColor();
class DetailsPage extends StatelessWidget {
final Food food;
DetailsPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allColor.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                Icons.arrow_back_ios_outlined,
                Icons.favorite_outline,
            leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImage(food),
            FoodDetails(food),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        width: 100,
        child: RawMaterialButton(
          fillColor: allColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          onPressed: () {

          },
        ),
      ),
    );
  }
}
