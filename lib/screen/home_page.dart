import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/model/restaurent.dart';
import 'package:food_delivery/widget/custom_app_bar.dart';
import 'package:food_delivery/widget/food_list.dart';
import 'package:food_delivery/widget/food_list_view.dart';
import 'package:food_delivery/widget/restaurent_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


AllColor allColor= AllColor();
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected= 0;
  final pageController= PageController();
  final restaurent = Restaurent.generateRestaurent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allColor.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_sharp,
          ),
          RestaurentInfo(),
          Foodlist(selected,
              (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              }, restaurent),
          Expanded(
              child: FoodListView(
            selected,
                  (int index) {
              setState(() {
                selected= index;
              });
              },
                pageController,
                restaurent,
          ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurent.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 8,
                  width: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)
                ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: allColor.bgColor,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: allColor.primaryColor,
                    padding: 2,
                    width: 2,
                  )
                )
              ),
              onDotClicked: (index)=> pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: allColor.primaryColor,
        elevation: 2,
        child: Icon(Icons.shopping_bag_outlined,
        color: Colors.black,
            size: 30,
    )),
    );
  }
}
