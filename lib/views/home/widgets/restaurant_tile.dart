import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class RestaurantTile extends StatelessWidget {

  const RestaurantTile({super.key, required this.restaurant});

  final dynamic restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Stack(

        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r)
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.r)
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(
                              restaurant["imageUrl"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        
                        Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                              color: kGray.withOpacity(0.6),
                              height: 16.h,
                              width: width,
                              child: RatingBarIndicator(
                                rating: 5,
                                itemCount: 5,
                                itemSize: 15.h,
                                itemBuilder: (BuildContext context, int i) {
                                  return const Icon(Icons.star, color: kSecondary);
                                },
                              ),
                            )),

                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: restaurant["title"],
                          style: appStyle(11, kDark, FontWeight.w400))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}