import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/widgets/all_fastest_foods.dart';
import 'package:foodly/views/home/widgets/all_near_by_restaurants.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/recommendations.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                  text: "Nearby Restaurants",
                  onTap: (){
                    Get.to(() => AllNearByRestaurants(),
                      transition: Transition.zoom,
                      duration: const Duration(milliseconds: 900)
                    );
                  }),
              Heading(
                  text: "Try something new",
                  onTap: (){
                    Get.to(() => Recommendations(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 900)
                    );
                  }),
              Heading(
                  text: "Food closer to you",
                  onTap: (){
                    Get.to(() => AllFastestFoods(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 900)
                    );
                  })
            ],
          )),
      ),
    );
  }
}

