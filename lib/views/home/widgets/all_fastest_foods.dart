import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/food_tile.dart';
import 'package:foodly/views/home/widgets/restaurant_tile.dart';

import '../../../common/background_container.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: kSecondaryLight,
        elevation: 0.3,
        title: ReusableText(
          text: "All Fastest Foods",
          style: appStyle(13, kGray, FontWeight.w600),
        )
      ),
      body: BackgroundContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(foods.length, (i) {
                var food = foods[i];

                return FoodTile(food: food);
              }),
            ),
          )
      ),
    );
  }
}
