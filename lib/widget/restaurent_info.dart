import 'package:flutter/material.dart';
import 'package:food_delivery/helper/colors.dart';
import 'package:food_delivery/model/restaurent.dart';

AllColor allColor= AllColor();

class RestaurentInfo extends StatelessWidget {
  final restaurent= Restaurent.generateRestaurent();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurent.name,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(restaurent.waitTime,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          )),
                      SizedBox(width: 10,),
                      Text(restaurent.distance,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.5)
                      ),),
                      SizedBox(width: 10,),
                      Text(restaurent.label,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.5)
                        ),),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/reslogo.jpg',
                width: 80,),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "${restaurent.desc}",
              style: TextStyle(
                fontSize: 16
              ),
              ),
              Row(
                children: [
                  Icon(Icons.star_border_outlined,
                  color: allColor.primaryColor,),
                  Text('${restaurent.score}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 15,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
